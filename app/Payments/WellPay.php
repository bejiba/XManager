<?php

namespace App\Payments;
 
use App\Http\Models\Order;
use App\Http\Models\User;
use App\Http\Models\Package;
use App\Http\Models\Coupon;
use App\Handlers\Config;
use App\Helpers\Helpers;
use App\Helpers\i18n;
use App\Http\Controllers\BaseController;
use App\Http\Models\Currency;
use App\Handlers\AuthHandler\Auth;
use App\Http\Models\TempOrder;
use Exception;


class WellPay extends BaseController
{
	private $gatewayUri;
	
	public function __construct()
    {
       $this->gatewayUri = 'https://api.crossz.pro/v1/service/payment'; 
    }
    
    public function post($data)
    {
        if (is_array($data))
        {
            $data = http_build_query($data);
        }
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_URL, $this->gatewayUri);
        curl_setopt($curl, CURLOPT_HEADER, 0);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
        curl_setopt($curl, CURLOPT_POST, 1);
        curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
        curl_setopt($curl, CURLOPT_HTTPHEADER,  array(
            "Content-Type: application/x-www-form-urlencoded") );
        $data = curl_exec($curl);
        // $data = curl_getinfo($curl,CURLINFO_EFFECTIVE_URL);
        curl_close($curl);
        return $data;
    }
	
    public function prepareSign($data)
    {
        ksort($data);
        return htmlspecialchars(http_build_query($data));
    }

    public function verify(array $data)
    {
        $sign = $data['sign'] ?? null;
        return $sign === $this->sign($data);
    }

    private function sign(array $data)
    {
		$Config = new Config();
        $str = urldecode(http_build_query($this->argSorts($this->paraFilters($data))));
        return md5($str . "&app_secret=" . $Config->getConfig('wellpay_app_secret'));
    }
    private function paraFilters(array $para)
    {
        return array_filter($para, function ($item, $key) {
            if ($key != "sign" && !empty($item)) return true;
        }, ARRAY_FILTER_USE_BOTH);
    }
    private function argSorts(array $para)
    {
        ksort($para);
        reset($para);
        return $para;
    }
	
    public function wellpay($request, $response, $args)
    {
		ini_set('memory_limit', '-1');
		$user = Auth::getUser();
		if (!$user->isLogin) {
            return $response->withStatus(302)->withHeader('Location', '/login');
        }
		
		$Currency = new Currency();
		$Config = new Config();
		$lang = new i18n();
		$content = $request->getParsedBody();
		$order_id  = $content['order_id'];
		$item = TempOrder::where("order_id", $order_id)->where('userid', $user->id)->first();
		
		if(!$item){	
			$res['ret'] = 0;			
			$res['msg'] = $lang->get('pack_not_found');
			$res['url'] = (new Checkout())->Url().'/portal/packages';
			$response->getBody()->write(json_encode($res));
			return  $response;
		}
		if($item->pay_url != "" || $item->pay_url != null){
			$res['ret'] 		= 1;
			$res['url'] 	    = $item->pay_url;
			$response->getBody()->write(json_encode($res));
			return $response;
		}
		$amount    = $item->total;
        $packageid = $item->packageid;		
		$package = Package::where('id', $packageid)->where('status', 1)->first();
		if (!$package) {
			$res['ret'] 		= 0;
			$res['msg'] 		= $lang->get('off_shelves');
			$response->getBody()->write(json_encode($res));
			return $response;
		}
		
        $price = bcadd($amount,0,2);

		$rate = $Currency->getRate($Config->getConfig('wellpay_currency_code'));
		
		$item->status 		= 0;
		$item->create_date 	= time();
		$item->expdate 		= time() + 7200;
		$item->exrate		= bcmul($price,$rate, 2);
        $item->notify_url 	= (new Checkout())->Callback()."/notify/wellpay";
        $item->type		    = 22;
		$item->save();
		
		$appid = $Config->getConfig('wellpay_app_id');

		$notify_url = $item->notify_url;
        $return_url = $item->notify_url;
        $price = sprintf("%.2f",$item->exrate);
       
        $data = array(
            'appid'=> $appid,
            'orderno' => $item->order_id,
            'totalfee'=> $price,
            'server_id'=> $Config->getConfig('wellpay_serverid'),//
            'panel'=> 'ssp-newfeat',//
            'ver'=> '101',//
            'request_time'=> time(),//
            'remark'=> '',//
            'notifyurl' => $notify_url,//	异步通知地址
            'returnurl' => $item->notify_url.'?wid='.$item->order_id,
        );
		
        $appkey = $Config->getConfig('wellpay_app_secret');
        ksort($data);
        $sign1 = htmlspecialchars(http_build_query($data));
      
        $sign = strtolower(md5($sign1 . $appkey));
        $data["sign"] = $sign;
		
        $data['sign'] = $this->sign($data);
        $resdata = $this->post($data);
        $result = json_decode($resdata,true);
		
		
		if(isset($result['data']['payUrl'])){
			$item = TempOrder::where("id", '=', $item->id)->where('status', 0)->first();
			$item->pay_url 	= $result['data']['payUrl'];
			$item->save();	
				
			$res['ret'] 	= 1;
			$res['url'] 	= $result['data']['payUrl'];
			$response->getBody()->write(json_encode($res));
			return $response;
		}else  {
			$res['ret'] 	= 0;
			$res['msg'] 	= '创建支付订单错误: 处理支付网关失败';
			$response->getBody()->write(json_encode($res));
			return $response;
        }
    }
		
		
    public function callback($request, $response, $args)
    {	
		ini_set('memory_limit', '-1');
		//$params = $_POST;
		$params = json_decode(@file_get_contents("php://input"),true);
		
		$content = $request->getQueryParams();
		if(isset($content['wid'])){
			$orders = Order::where("order_id", '=', $content['wid'])->first();
			if($orders->state == 1 || $orders->state == "1"){
				return $response->withStatus(302)->withHeader('Location', (new Checkout())->Url().'/portal/success?orderid='.$content['wid']);
			}else{
				return $response->withStatus(302)->withHeader('Location', (new Checkout())->Url().'/portal/orders');
			}
		}
		
		if (!self::verify($params)) {
				return $response->withStatus(302)->withHeader('Location', (new Checkout())->Url().'/portal/orders');
		}else{
				$order = TempOrder::where("order_id", '=', $params['orderno'])->first();
				if ($order){
					(new Purchase())->update($params['orderno']);
					echo 'success';
					return $response->withStatus(302)->withHeader('Location', (new Checkout())->Url().'/portal/success?orderid='.$params['orderno']);
					exit;
				}else{
					$orders = Order::where("order_id", '=', $params['orderno'])->first();
					if($orders->state == 1 || $orders->state == "1"){
						return $response->withStatus(302)->withHeader('Location', (new Checkout())->Url().'/portal/success?orderid='.$params['orderno']);
					}else{
						return $response->withStatus(302)->withHeader('Location', (new Checkout())->Url().'/portal/orders');
					}
				}
		}
		
		$response->getBody()->write("Order verification failed");
		return $response;
	}
	
    public function getip() {
        static $ip = '';
        $ip = $_SERVER['REMOTE_ADDR'];
        if(isset($_SERVER['HTTP_CDN_SRC_IP'])) {
            $ip = $_SERVER['HTTP_CDN_SRC_IP'];
        } elseif (isset($_SERVER['HTTP_CLIENT_IP']) && preg_match('/^([0-9]{1,3}\.){3}[0-9]{1,3}$/', $_SERVER['HTTP_CLIENT_IP'])) {
            $ip = $_SERVER['HTTP_CLIENT_IP'];
        } elseif(isset($_SERVER['HTTP_X_FORWARDED_FOR']) AND preg_match_all('#\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}#s', $_SERVER['HTTP_X_FORWARDED_FOR'], $matches)) {
            foreach ($matches[0] AS $xip) {
                if (!preg_match('#^(10|172\.16|192\.168)\.#', $xip)) {
                    $ip = $xip;
                    break; 
                } 
            }
        }
        return $ip;
    }
}	