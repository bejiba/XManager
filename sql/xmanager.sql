
CREATE TABLE `accounts` (
  `id` int(20) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `accountname` text NOT NULL,
  `accountid` text NOT NULL,
  `accountpassword` text NOT NULL,
  `allow_check` tinyint(1) NOT NULL DEFAULT 0,
  `accountlevel` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `alive_ip`
--

CREATE TABLE `alive_ip` (
  `id` bigint(20) NOT NULL,
  `nodeid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `username` varchar(250) DEFAULT NULL,
  `ip` text NOT NULL,
  `datetime` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE `captcha` (
  `id` bigint(20) NOT NULL,
  `phrase` text DEFAULT NULL,
  `phraseid` int(5) NOT NULL,
  `expire` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cloudflare`
--

CREATE TABLE `cloudflare` (
  `id` int(11) NOT NULL,
  `domain` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_key` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commission`
--

CREATE TABLE `commission` (
  `id` bigint(20) NOT NULL,
  `packageid` int(11) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `userid` bigint(20) NOT NULL,
  `ref_by` bigint(20) NOT NULL,
  `ref_get` decimal(12,2) NOT NULL,
  `datetime` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config`
--



INSERT INTO `config` (`name`, `value`) VALUES
('accessdenied', '0'),
('admin_telegram', ''),
('alipay', '0'),
('alipay_url', ''),
('allowaccess', '0'),
('allowed_phone_numbers', ''),
('api_key', 'Cs5PwEF4AwrY0XHQpyPx'),
('appName', 'XManager'),
('app_color', '#168ea1'),
('aws_key', ''),
('aws_region', ''),
('aws_secret', ''),
('aws_sender', ''),
('backup_email', ''),
('backup_password', ''),
('baseUrl', 'https://www.xyz.com'),
('binancepay_apikey', ''),
('binancepay_currency_code', 'USD'),
('binancepay_nonce', ''),
('binancepay_order_exp', '2'),
('binancepay_secretKey', ''),
('callback_addr', ''),
('captcha', '0'),
('chat_mode', '1'),
('cnrestrictions', ''),
('comm_pay_once', '1'),
('cp_currency_code', 'CNY'),
('cp_ipn_secret', ''),
('cp_merchant_id', ''),
('cp_private_key', ''),
('cp_public_key', ''),
('crisp_id', ''),
('cryptapi_currency_code', 'USD'),
('cryptapi_usdt_address', ''),
('default_currency', 'USD'),
('default_currency_symbol', '$'),
('dev_limit_type', '1'),
('disable_coupon', '1'),
('dsabletrafficlogs', '0'),
('easypay_apiurl', ''),
('easypay_app_id', ''),
('easypay_currency_code', 'CNY'),
('easypay_secret', ''),
('email_backup', '0'),
('email_loginverify', '1'),
('email_verify', '1'),
('enablepayments', '1'),
('enable_backup', '0'),
('enable_binancepay', '0'),
('enable_chat', '0'),
('enable_coinpayments', '0'),
('enable_cryptapi', '0'),
('enable_easypay', '0'),
('enable_easypay_alipay', '0'),
('enable_easypay_wechat', '0'),
('enable_epusdt', '0'),
('enable_f2fpay', '0'),
('enable_ga_tracking', '0'),
('enable_google_analytics', '0'),
('enable_invite', '0'),
('enable_kill', '1'),
('enable_mgate', '0'),
('enable_notification', '1'),
('enable_paymentwall', '0'),
('enable_paypal', '0'),
('enable_paystack', '0'),
('enable_rave', '0'),
('enable_rebate', '1'),
('enable_reg', '1'),
('enable_stripe', '0'),
('enable_stripe_alipay', '0'),
('enable_stripe_card', '1'),
('enable_stripe_wechat', '0'),
('enable_telegram', '0'),
('enable_theadpay', '0'),
('enable_token188', '0'),
('enable_vpay', '0'),
('enable_vpay_alipay', '0'),
('enable_vpay_wechat', '0'),
('enable_wellpay', '0'),
('epusdt_api', ''),
('epusdt_currency_code', 'USD'),
('epusdt_token', ''),
('exchange_apikey', ''),
('exchange_method', '1'),
('exp_reset', '1'),
('exp_reset_level', '1'),
('f2fpay_app_id', ''),
('f2fpay_currency_code', 'CNY'),
('f2fpay_private_key', ''),
('f2fpay_public_key', ''),
('ga_auth_loginverify', '1'),
('googleauth', NULL),
('googleclientid', ''),
('googleemail', ''),
('googlehost', 'smtp.gmail.com'),
('googleport', '587'),
('googlerefreshtoken', ''),
('googlesecret', ''),
('googletoken', ''),
('googletokenexpire', ''),
('google_analytics_id', ''),
('google_tracking_id', ''),
('h_captcha_key', ''),
('h_captcha_secrete', ''),
('jkstate', '1'),
('lastheart', NULL),
('lastpay', NULL),
('latesversion', 'v5.48'),
('latesversioncontent', ''),
('LoginLogs', '1'),
('loginverify', '0'),
('login_bind_ip', '0'),
('logo_path', '/uploads/X.png'),
('mailDriver', '3'),
('mailgun_domain', ''),
('mailgun_key', ''),
('mailgun_sender', ''),
('maintenance', '0'),
('mgate_api_url', ''),
('mgate_app_id', ''),
('mgate_app_secret', ''),
('mgate_currency_code', 'CNY'),
('mobile_loginverify', '0'),
('muKey', 'XManager'),
('paymentwall_alipay', '0'),
('paymentwall_card', '0'),
('paymentwall_country_code', 'CN'),
('paymentwall_currency_code', 'USD'),
('paymentwall_env', '0'),
('paymentwall_key', ''),
('paymentwall_secret', ''),
('paymentwall_unionpay', '0'),
('paymentwall_wechat', '0'),
('paymentwall_widget', 'p1_1'),
('payoutlimit', '100'),
('payoutmethod', '1,2,3'),
('paypal_client', ''),
('paypal_currency_code', 'USD'),
('paypal_mode', 'live'),
('paypal_secret', ''),
('paystack_card', '0'),
('paystack_currency_code', 'USD'),
('paystack_mobile_currency_code', 'GHS'),
('paystack_mobile_money', '0'),
('paystack_secret', ''),
('pay_bal', '0'),
('pay_logo', '0'),
('pwdMethod', 'sha256'),
('rave_card', '0'),
('rave_currency_code', 'USD'),
('rave_mobile_currency_code', 'GHS'),
('rave_mobile_money', '0'),
('rave_secret', ''),
('rebate', '60'),
('rebate_info', ''),
('reg_connector', '1'),
('reg_group', '1'),
('reg_level', '3'),
('reg_mode', '1'),
('reg_speed', '1024'),
('reg_traffic', '1'),
('reg_traffic_exp', '1'),
('rememberme', '7'),
('restrictions', ''),
('restrict_email', '0'),
('restrict_email_list', '@gmail.com,@protonmail.com,@ymail.com,@hotmail.co.uk,@hotmail.com,@qq.com,@outlook.com,@163.com,@126.com,@live.com,@msn.com,@yeah.net,@foxmail.com'),
('salt', ''),
('sendgrid_key', ''),
('sendgrid_name', 'XManager'),
('sendgrid_sender', 'no-reply@xyz.com'),
('send_order_email', '0'),
('ShareAccounts', '0'),
('site_key', '1145141919810'),
('smsDriver', '0'),
('smtp_debug', NULL),
('smtp_host', 'smtp.sendgrid.net'),
('smtp_method', '0'),
('smtp_name', 'XManager'),
('smtp_password', ''),
('smtp_port', '587'),
('smtp_sender', 'no-reply@xyz.com'),
('smtp_ssl', '1'),
('smtp_username', ''),
('statsupdate', '10'),
('stripe_currency_code', 'USD'),
('stripe_key', ''),
('stripe_webhook', ''),
('subUrl', 'https://www.xyz.com/link/'),
('sub_addr', 'https://www.xyz.com/link/'),
('tawkchat_api', ''),
('tawkchat_id', ''),
('telegram_backup', '0'),
('telegram_bot', ''),
('telegram_chatid', ''),
('telegram_gid', ''),
('telegram_group_link', ''),
('telegram_group_quiet', '1'),
('telegram_loginverify', '1'),
('telegram_request_token', ''),
('telegram_token', ''),
('template', 'default'),
('theadpay_currency_code', 'CNY'),
('theadpay_key', ''),
('theadpay_mchid', ''),
('theadpay_url', ''),
('token188_currency_code', 'CNY'),
('token188_key', ''),
('token188_mchid', ''),
('token188_url', 'https://api.token188.com/utg/pay/address'),
('trafficexpnotify', '0'),
('trafficexpnotifydays', '1,3'),
('trafficusednotify', '0'),
('trafficusednotifylimit', '500'),
('user_currecy_switch', '0'),
('user_language_select', '1'),
('user_verify_email', '0'),
('version', 'v5.48'),
('ViewLogs', '0'),
('vpay_currency_code', 'CNY'),
('vpay_order_exp', '10'),
('webapisafe', '0'),
('wechat_url', ''),
('wellpay_app_id', ''),
('wellpay_app_secret', ''),
('wellpay_serverid', ''),
('wellpay_currency_code', 'CNY');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(8) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso3` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numeric_code` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso2` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phonecode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capital` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tld` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `native` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subregion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezones` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `translations` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `emoji` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emojiU` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `flag` tinyint(1) NOT NULL DEFAULT 1,
  `wikiDataId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Rapid API GeoDB Cities'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `iso3`, `numeric_code`, `iso2`, `phonecode`, `capital`, `currency`, `currency_symbol`, `tld`, `native`, `region`, `subregion`, `timezones`, `translations`, `latitude`, `longitude`, `emoji`, `emojiU`, `created_at`, `updated_at`, `flag`, `wikiDataId`) VALUES
(1, 'Afghanistan', 'AFG', '004', 'AF', '93', 'Kabul', 'AFN', '؋', '.af', 'افغانستان', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Kabul\",\"gmtOffset\":16200,\"gmtOffsetName\":\"UTC+04:30\",\"abbreviation\":\"AFT\",\"tzName\":\"Afghanistan Time\"}]', '{\"kr\":\"아프가니스탄\",\"br\":\"Afeganistão\",\"pt\":\"Afeganistão\",\"nl\":\"Afghanistan\",\"hr\":\"Afganistan\",\"fa\":\"افغانستان\",\"de\":\"Afghanistan\",\"es\":\"Afganistán\",\"fr\":\"Afghanistan\",\"ja\":\"アフガニスタン\",\"it\":\"Afghanistan\",\"cn\":\"阿富汗\"}', '33.00000000', '65.00000000', '🇦🇫', 'U+1F1E6 U+1F1EB', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q889'),
(2, 'Aland Islands', 'ALA', '248', 'AX', '35818', 'Mariehamn', 'EUR', '€', '.ax', 'Åland', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Mariehamn\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"올란드 제도\",\"br\":\"Ilhas de Aland\",\"pt\":\"Ilhas de Aland\",\"nl\":\"Ålandeilanden\",\"hr\":\"Ålandski otoci\",\"fa\":\"جزایر الند\",\"de\":\"Åland\",\"es\":\"Alandia\",\"fr\":\"Åland\",\"ja\":\"オーランド諸島\",\"it\":\"Isole Aland\",\"cn\":\"奥兰群岛\"}', '60.11666700', '19.90000000', '🇦🇽', 'U+1F1E6 U+1F1FD', '2018-07-20 20:11:03', '2021-12-04 08:17:27', 1, NULL),
(3, 'Albania', 'ALB', '008', 'AL', '355', 'Tirana', 'ALL', 'Lek', '.al', 'Shqipëria', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Tirane\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"알바니아\",\"br\":\"Albânia\",\"pt\":\"Albânia\",\"nl\":\"Albanië\",\"hr\":\"Albanija\",\"fa\":\"آلبانی\",\"de\":\"Albanien\",\"es\":\"Albania\",\"fr\":\"Albanie\",\"ja\":\"アルバニア\",\"it\":\"Albania\",\"cn\":\"阿尔巴尼亚\"}', '41.00000000', '20.00000000', '🇦🇱', 'U+1F1E6 U+1F1F1', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q222'),
(4, 'Algeria', 'DZA', '012', 'DZ', '213', 'Algiers', 'DZD', 'دج', '.dz', 'الجزائر', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa/Algiers\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"알제리\",\"br\":\"Argélia\",\"pt\":\"Argélia\",\"nl\":\"Algerije\",\"hr\":\"Alžir\",\"fa\":\"الجزایر\",\"de\":\"Algerien\",\"es\":\"Argelia\",\"fr\":\"Algérie\",\"ja\":\"アルジェリア\",\"it\":\"Algeria\",\"cn\":\"阿尔及利亚\"}', '28.00000000', '3.00000000', '🇩🇿', 'U+1F1E9 U+1F1FF', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q262'),
(5, 'American Samoa', 'ASM', '016', 'AS', '1684', 'Pago Pago', 'USD', '$', '.as', 'American Samoa', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Pago_Pago\",\"gmtOffset\":-39600,\"gmtOffsetName\":\"UTC-11:00\",\"abbreviation\":\"SST\",\"tzName\":\"Samoa Standard Time\"}]', '{\"kr\":\"아메리칸사모아\",\"br\":\"Samoa Americana\",\"pt\":\"Samoa Americana\",\"nl\":\"Amerikaans Samoa\",\"hr\":\"Američka Samoa\",\"fa\":\"ساموآی آمریکا\",\"de\":\"Amerikanisch-Samoa\",\"es\":\"Samoa Americana\",\"fr\":\"Samoa américaines\",\"ja\":\"アメリカ領サモア\",\"it\":\"Samoa Americane\",\"cn\":\"美属萨摩亚\"}', '-14.33333333', '-170.00000000', '🇦🇸', 'U+1F1E6 U+1F1F8', '2018-07-20 20:11:03', '2021-12-04 08:17:14', 1, NULL),
(6, 'Andorra', 'AND', '020', 'AD', '376', 'Andorra la Vella', 'EUR', '€', '.ad', 'Andorra', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Andorra\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"안도라\",\"br\":\"Andorra\",\"pt\":\"Andorra\",\"nl\":\"Andorra\",\"hr\":\"Andora\",\"fa\":\"آندورا\",\"de\":\"Andorra\",\"es\":\"Andorra\",\"fr\":\"Andorre\",\"ja\":\"アンドラ\",\"it\":\"Andorra\",\"cn\":\"安道尔\"}', '42.50000000', '1.50000000', '🇦🇩', 'U+1F1E6 U+1F1E9', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q228'),
(7, 'Angola', 'AGO', '024', 'AO', '244', 'Luanda', 'AOA', 'Kz', '.ao', 'Angola', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Luanda\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"앙골라\",\"br\":\"Angola\",\"pt\":\"Angola\",\"nl\":\"Angola\",\"hr\":\"Angola\",\"fa\":\"آنگولا\",\"de\":\"Angola\",\"es\":\"Angola\",\"fr\":\"Angola\",\"ja\":\"アンゴラ\",\"it\":\"Angola\",\"cn\":\"安哥拉\"}', '-12.50000000', '18.50000000', '🇦🇴', 'U+1F1E6 U+1F1F4', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q916'),
(8, 'Anguilla', 'AIA', '660', 'AI', '1264', 'The Valley', 'XCD', '$', '.ai', 'Anguilla', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Anguilla\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"앵귈라\",\"br\":\"Anguila\",\"pt\":\"Anguila\",\"nl\":\"Anguilla\",\"hr\":\"Angvila\",\"fa\":\"آنگویلا\",\"de\":\"Anguilla\",\"es\":\"Anguilla\",\"fr\":\"Anguilla\",\"ja\":\"アンギラ\",\"it\":\"Anguilla\",\"cn\":\"安圭拉\"}', '18.25000000', '-63.16666666', '🇦🇮', 'U+1F1E6 U+1F1EE', '2018-07-20 20:11:03', '2021-12-04 08:17:08', 1, NULL),
(9, 'Antarctica', 'ATA', '010', 'AQ', '672', '', 'AAD', '$', '.aq', 'Antarctica', 'Polar', '', '[{\"zoneName\":\"Antarctica/Casey\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"AWST\",\"tzName\":\"Australian Western Standard Time\"},{\"zoneName\":\"Antarctica/Davis\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"DAVT\",\"tzName\":\"Davis Time\"},{\"zoneName\":\"Antarctica/DumontDUrville\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"DDUT\",\"tzName\":\"Dumont d\'Urville Time\"},{\"zoneName\":\"Antarctica/Mawson\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"MAWT\",\"tzName\":\"Mawson Station Time\"},{\"zoneName\":\"Antarctica/McMurdo\",\"gmtOffset\":46800,\"gmtOffsetName\":\"UTC+13:00\",\"abbreviation\":\"NZDT\",\"tzName\":\"New Zealand Daylight Time\"},{\"zoneName\":\"Antarctica/Palmer\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"CLST\",\"tzName\":\"Chile Summer Time\"},{\"zoneName\":\"Antarctica/Rothera\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ROTT\",\"tzName\":\"Rothera Research Station Time\"},{\"zoneName\":\"Antarctica/Syowa\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"SYOT\",\"tzName\":\"Showa Station Time\"},{\"zoneName\":\"Antarctica/Troll\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"},{\"zoneName\":\"Antarctica/Vostok\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"VOST\",\"tzName\":\"Vostok Station Time\"}]', '{\"kr\":\"남극\",\"br\":\"Antártida\",\"pt\":\"Antárctida\",\"nl\":\"Antarctica\",\"hr\":\"Antarktika\",\"fa\":\"جنوبگان\",\"de\":\"Antarktika\",\"es\":\"Antártida\",\"fr\":\"Antarctique\",\"ja\":\"南極大陸\",\"it\":\"Antartide\",\"cn\":\"南极洲\"}', '-74.65000000', '4.48000000', '🇦🇶', 'U+1F1E6 U+1F1F6', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(10, 'Antigua And Barbuda', 'ATG', '028', 'AG', '1268', 'St. John\'s', 'XCD', '$', '.ag', 'Antigua and Barbuda', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Antigua\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"앤티가 바부다\",\"br\":\"Antígua e Barbuda\",\"pt\":\"Antígua e Barbuda\",\"nl\":\"Antigua en Barbuda\",\"hr\":\"Antigva i Barbuda\",\"fa\":\"آنتیگوا و باربودا\",\"de\":\"Antigua und Barbuda\",\"es\":\"Antigua y Barbuda\",\"fr\":\"Antigua-et-Barbuda\",\"ja\":\"アンティグア・バーブーダ\",\"it\":\"Antigua e Barbuda\",\"cn\":\"安提瓜和巴布达\"}', '17.05000000', '-61.80000000', '🇦🇬', 'U+1F1E6 U+1F1EC', '2018-07-20 20:11:03', '2021-12-04 08:16:59', 1, 'Q781'),
(11, 'Argentina', 'ARG', '032', 'AR', '54', 'Buenos Aires', 'ARS', '$', '.ar', 'Argentina', 'Americas', 'South America', '[{\"zoneName\":\"America/Argentina/Buenos_Aires\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Catamarca\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Cordoba\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Jujuy\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/La_Rioja\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Mendoza\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Rio_Gallegos\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Salta\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/San_Juan\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/San_Luis\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Tucuman\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"},{\"zoneName\":\"America/Argentina/Ushuaia\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"ART\",\"tzName\":\"Argentina Time\"}]', '{\"kr\":\"아르헨티나\",\"br\":\"Argentina\",\"pt\":\"Argentina\",\"nl\":\"Argentinië\",\"hr\":\"Argentina\",\"fa\":\"آرژانتین\",\"de\":\"Argentinien\",\"es\":\"Argentina\",\"fr\":\"Argentine\",\"ja\":\"アルゼンチン\",\"it\":\"Argentina\",\"cn\":\"阿根廷\"}', '-34.00000000', '-64.00000000', '🇦🇷', 'U+1F1E6 U+1F1F7', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q414'),
(12, 'Armenia', 'ARM', '051', 'AM', '374', 'Yerevan', 'AMD', '֏', '.am', 'Հայաստան', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Yerevan\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"AMT\",\"tzName\":\"Armenia Time\"}]', '{\"kr\":\"아르메니아\",\"br\":\"Armênia\",\"pt\":\"Arménia\",\"nl\":\"Armenië\",\"hr\":\"Armenija\",\"fa\":\"ارمنستان\",\"de\":\"Armenien\",\"es\":\"Armenia\",\"fr\":\"Arménie\",\"ja\":\"アルメニア\",\"it\":\"Armenia\",\"cn\":\"亚美尼亚\"}', '40.00000000', '45.00000000', '🇦🇲', 'U+1F1E6 U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q399'),
(13, 'Aruba', 'ABW', '533', 'AW', '297', 'Oranjestad', 'AWG', 'ƒ', '.aw', 'Aruba', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Aruba\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"아루바\",\"br\":\"Aruba\",\"pt\":\"Aruba\",\"nl\":\"Aruba\",\"hr\":\"Aruba\",\"fa\":\"آروبا\",\"de\":\"Aruba\",\"es\":\"Aruba\",\"fr\":\"Aruba\",\"ja\":\"アルバ\",\"it\":\"Aruba\",\"cn\":\"阿鲁巴\"}', '12.50000000', '-69.96666666', '🇦🇼', 'U+1F1E6 U+1F1FC', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(14, 'Australia', 'AUS', '036', 'AU', '61', 'Canberra', 'AUD', '$', '.au', 'Australia', 'Oceania', 'Australia and New Zealand', '[{\"zoneName\":\"Antarctica/Macquarie\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"MIST\",\"tzName\":\"Macquarie Island Station Time\"},{\"zoneName\":\"Australia/Adelaide\",\"gmtOffset\":37800,\"gmtOffsetName\":\"UTC+10:30\",\"abbreviation\":\"ACDT\",\"tzName\":\"Australian Central Daylight Saving Time\"},{\"zoneName\":\"Australia/Brisbane\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"AEST\",\"tzName\":\"Australian Eastern Standard Time\"},{\"zoneName\":\"Australia/Broken_Hill\",\"gmtOffset\":37800,\"gmtOffsetName\":\"UTC+10:30\",\"abbreviation\":\"ACDT\",\"tzName\":\"Australian Central Daylight Saving Time\"},{\"zoneName\":\"Australia/Currie\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"AEDT\",\"tzName\":\"Australian Eastern Daylight Saving Time\"},{\"zoneName\":\"Australia/Darwin\",\"gmtOffset\":34200,\"gmtOffsetName\":\"UTC+09:30\",\"abbreviation\":\"ACST\",\"tzName\":\"Australian Central Standard Time\"},{\"zoneName\":\"Australia/Eucla\",\"gmtOffset\":31500,\"gmtOffsetName\":\"UTC+08:45\",\"abbreviation\":\"ACWST\",\"tzName\":\"Australian Central Western Standard Time (Unofficial)\"},{\"zoneName\":\"Australia/Hobart\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"AEDT\",\"tzName\":\"Australian Eastern Daylight Saving Time\"},{\"zoneName\":\"Australia/Lindeman\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"AEST\",\"tzName\":\"Australian Eastern Standard Time\"},{\"zoneName\":\"Australia/Lord_Howe\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"LHST\",\"tzName\":\"Lord Howe Summer Time\"},{\"zoneName\":\"Australia/Melbourne\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"AEDT\",\"tzName\":\"Australian Eastern Daylight Saving Time\"},{\"zoneName\":\"Australia/Perth\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"AWST\",\"tzName\":\"Australian Western Standard Time\"},{\"zoneName\":\"Australia/Sydney\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"AEDT\",\"tzName\":\"Australian Eastern Daylight Saving Time\"}]', '{\"kr\":\"호주\",\"br\":\"Austrália\",\"pt\":\"Austrália\",\"nl\":\"Australië\",\"hr\":\"Australija\",\"fa\":\"استرالیا\",\"de\":\"Australien\",\"es\":\"Australia\",\"fr\":\"Australie\",\"ja\":\"オーストラリア\",\"it\":\"Australia\",\"cn\":\"澳大利亚\"}', '-27.00000000', '133.00000000', '🇦🇺', 'U+1F1E6 U+1F1FA', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q408'),
(15, 'Austria', 'AUT', '040', 'AT', '43', 'Vienna', 'EUR', '€', '.at', 'Österreich', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Vienna\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"오스트리아\",\"br\":\"áustria\",\"pt\":\"áustria\",\"nl\":\"Oostenrijk\",\"hr\":\"Austrija\",\"fa\":\"اتریش\",\"de\":\"Österreich\",\"es\":\"Austria\",\"fr\":\"Autriche\",\"ja\":\"オーストリア\",\"it\":\"Austria\",\"cn\":\"奥地利\"}', '47.33333333', '13.33333333', '🇦🇹', 'U+1F1E6 U+1F1F9', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q40'),
(16, 'Azerbaijan', 'AZE', '031', 'AZ', '994', 'Baku', 'AZN', 'm', '.az', 'Azərbaycan', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Baku\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"AZT\",\"tzName\":\"Azerbaijan Time\"}]', '{\"kr\":\"아제르바이잔\",\"br\":\"Azerbaijão\",\"pt\":\"Azerbaijão\",\"nl\":\"Azerbeidzjan\",\"hr\":\"Azerbajdžan\",\"fa\":\"آذربایجان\",\"de\":\"Aserbaidschan\",\"es\":\"Azerbaiyán\",\"fr\":\"Azerbaïdjan\",\"ja\":\"アゼルバイジャン\",\"it\":\"Azerbaijan\",\"cn\":\"阿塞拜疆\"}', '40.50000000', '47.50000000', '🇦🇿', 'U+1F1E6 U+1F1FF', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q227'),
(17, 'Bahamas The', 'BHS', '044', 'BS', '1242', 'Nassau', 'BSD', 'B$', '.bs', 'Bahamas', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Nassau\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America)\"}]', '{\"kr\":\"바하마\",\"br\":\"Bahamas\",\"pt\":\"Baamas\",\"nl\":\"Bahama’s\",\"hr\":\"Bahami\",\"fa\":\"باهاما\",\"de\":\"Bahamas\",\"es\":\"Bahamas\",\"fr\":\"Bahamas\",\"ja\":\"バハマ\",\"it\":\"Bahamas\",\"cn\":\"巴哈马\"}', '24.25000000', '-76.00000000', '🇧🇸', 'U+1F1E7 U+1F1F8', '2018-07-20 20:11:03', '2021-12-04 08:16:48', 1, 'Q778'),
(18, 'Bahrain', 'BHR', '048', 'BH', '973', 'Manama', 'BHD', '.د.ب', '.bh', '‏البحرين', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Bahrain\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"kr\":\"바레인\",\"br\":\"Bahrein\",\"pt\":\"Barém\",\"nl\":\"Bahrein\",\"hr\":\"Bahrein\",\"fa\":\"بحرین\",\"de\":\"Bahrain\",\"es\":\"Bahrein\",\"fr\":\"Bahreïn\",\"ja\":\"バーレーン\",\"it\":\"Bahrein\",\"cn\":\"巴林\"}', '26.00000000', '50.55000000', '🇧🇭', 'U+1F1E7 U+1F1ED', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q398'),
(19, 'Bangladesh', 'BGD', '050', 'BD', '880', 'Dhaka', 'BDT', '৳', '.bd', 'Bangladesh', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Dhaka\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"BDT\",\"tzName\":\"Bangladesh Standard Time\"}]', '{\"kr\":\"방글라데시\",\"br\":\"Bangladesh\",\"pt\":\"Bangladeche\",\"nl\":\"Bangladesh\",\"hr\":\"Bangladeš\",\"fa\":\"بنگلادش\",\"de\":\"Bangladesch\",\"es\":\"Bangladesh\",\"fr\":\"Bangladesh\",\"ja\":\"バングラデシュ\",\"it\":\"Bangladesh\",\"cn\":\"孟加拉\"}', '24.00000000', '90.00000000', '🇧🇩', 'U+1F1E7 U+1F1E9', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q902'),
(20, 'Barbados', 'BRB', '052', 'BB', '1246', 'Bridgetown', 'BBD', 'Bds$', '.bb', 'Barbados', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Barbados\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"바베이도스\",\"br\":\"Barbados\",\"pt\":\"Barbados\",\"nl\":\"Barbados\",\"hr\":\"Barbados\",\"fa\":\"باربادوس\",\"de\":\"Barbados\",\"es\":\"Barbados\",\"fr\":\"Barbade\",\"ja\":\"バルバドス\",\"it\":\"Barbados\",\"cn\":\"巴巴多斯\"}', '13.16666666', '-59.53333333', '🇧🇧', 'U+1F1E7 U+1F1E7', '2018-07-20 20:11:03', '2021-12-04 08:16:34', 1, 'Q244'),
(21, 'Belarus', 'BLR', '112', 'BY', '375', 'Minsk', 'BYN', 'Br', '.by', 'Белару́сь', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Minsk\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"MSK\",\"tzName\":\"Moscow Time\"}]', '{\"kr\":\"벨라루스\",\"br\":\"Bielorrússia\",\"pt\":\"Bielorrússia\",\"nl\":\"Wit-Rusland\",\"hr\":\"Bjelorusija\",\"fa\":\"بلاروس\",\"de\":\"Weißrussland\",\"es\":\"Bielorrusia\",\"fr\":\"Biélorussie\",\"ja\":\"ベラルーシ\",\"it\":\"Bielorussia\",\"cn\":\"白俄罗斯\"}', '53.00000000', '28.00000000', '🇧🇾', 'U+1F1E7 U+1F1FE', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q184'),
(22, 'Belgium', 'BEL', '056', 'BE', '32', 'Brussels', 'EUR', '€', '.be', 'België', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Brussels\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"벨기에\",\"br\":\"Bélgica\",\"pt\":\"Bélgica\",\"nl\":\"België\",\"hr\":\"Belgija\",\"fa\":\"بلژیک\",\"de\":\"Belgien\",\"es\":\"Bélgica\",\"fr\":\"Belgique\",\"ja\":\"ベルギー\",\"it\":\"Belgio\",\"cn\":\"比利时\"}', '50.83333333', '4.00000000', '🇧🇪', 'U+1F1E7 U+1F1EA', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q31'),
(23, 'Belize', 'BLZ', '084', 'BZ', '501', 'Belmopan', 'BZD', '$', '.bz', 'Belize', 'Americas', 'Central America', '[{\"zoneName\":\"America/Belize\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America)\"}]', '{\"kr\":\"벨리즈\",\"br\":\"Belize\",\"pt\":\"Belize\",\"nl\":\"Belize\",\"hr\":\"Belize\",\"fa\":\"بلیز\",\"de\":\"Belize\",\"es\":\"Belice\",\"fr\":\"Belize\",\"ja\":\"ベリーズ\",\"it\":\"Belize\",\"cn\":\"伯利兹\"}', '17.25000000', '-88.75000000', '🇧🇿', 'U+1F1E7 U+1F1FF', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q242'),
(24, 'Benin', 'BEN', '204', 'BJ', '229', 'Porto-Novo', 'XOF', 'CFA', '.bj', 'Bénin', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Porto-Novo\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"베냉\",\"br\":\"Benin\",\"pt\":\"Benim\",\"nl\":\"Benin\",\"hr\":\"Benin\",\"fa\":\"بنین\",\"de\":\"Benin\",\"es\":\"Benín\",\"fr\":\"Bénin\",\"ja\":\"ベナン\",\"it\":\"Benin\",\"cn\":\"贝宁\"}', '9.50000000', '2.25000000', '🇧🇯', 'U+1F1E7 U+1F1EF', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q962'),
(25, 'Bermuda', 'BMU', '060', 'BM', '1441', 'Hamilton', 'BMD', '$', '.bm', 'Bermuda', 'Americas', 'Northern America', '[{\"zoneName\":\"Atlantic/Bermuda\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"버뮤다\",\"br\":\"Bermudas\",\"pt\":\"Bermudas\",\"nl\":\"Bermuda\",\"hr\":\"Bermudi\",\"fa\":\"برمودا\",\"de\":\"Bermuda\",\"es\":\"Bermudas\",\"fr\":\"Bermudes\",\"ja\":\"バミューダ\",\"it\":\"Bermuda\",\"cn\":\"百慕大\"}', '32.33333333', '-64.75000000', '🇧🇲', 'U+1F1E7 U+1F1F2', '2018-07-20 20:11:03', '2021-12-04 08:16:21', 1, NULL),
(26, 'Bhutan', 'BTN', '064', 'BT', '975', 'Thimphu', 'BTN', 'Nu.', '.bt', 'ʼbrug-yul', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Thimphu\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"BTT\",\"tzName\":\"Bhutan Time\"}]', '{\"kr\":\"부탄\",\"br\":\"Butão\",\"pt\":\"Butão\",\"nl\":\"Bhutan\",\"hr\":\"Butan\",\"fa\":\"بوتان\",\"de\":\"Bhutan\",\"es\":\"Bután\",\"fr\":\"Bhoutan\",\"ja\":\"ブータン\",\"it\":\"Bhutan\",\"cn\":\"不丹\"}', '27.50000000', '90.50000000', '🇧🇹', 'U+1F1E7 U+1F1F9', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q917'),
(27, 'Bolivia', 'BOL', '068', 'BO', '591', 'Sucre', 'BOB', 'Bs.', '.bo', 'Bolivia', 'Americas', 'South America', '[{\"zoneName\":\"America/La_Paz\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"BOT\",\"tzName\":\"Bolivia Time\"}]', '{\"kr\":\"볼리비아\",\"br\":\"Bolívia\",\"pt\":\"Bolívia\",\"nl\":\"Bolivia\",\"hr\":\"Bolivija\",\"fa\":\"بولیوی\",\"de\":\"Bolivien\",\"es\":\"Bolivia\",\"fr\":\"Bolivie\",\"ja\":\"ボリビア多民族国\",\"it\":\"Bolivia\",\"cn\":\"玻利维亚\"}', '-17.00000000', '-65.00000000', '🇧🇴', 'U+1F1E7 U+1F1F4', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q750'),
(28, 'Bosnia and Herzegovina', 'BIH', '070', 'BA', '387', 'Sarajevo', 'BAM', 'KM', '.ba', 'Bosna i Hercegovina', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Sarajevo\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"보스니아 헤르체고비나\",\"br\":\"Bósnia e Herzegovina\",\"pt\":\"Bósnia e Herzegovina\",\"nl\":\"Bosnië en Herzegovina\",\"hr\":\"Bosna i Hercegovina\",\"fa\":\"بوسنی و هرزگوین\",\"de\":\"Bosnien und Herzegowina\",\"es\":\"Bosnia y Herzegovina\",\"fr\":\"Bosnie-Herzégovine\",\"ja\":\"ボスニア・ヘルツェゴビナ\",\"it\":\"Bosnia ed Erzegovina\",\"cn\":\"波斯尼亚和黑塞哥维那\"}', '44.00000000', '18.00000000', '🇧🇦', 'U+1F1E7 U+1F1E6', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q225'),
(29, 'Botswana', 'BWA', '072', 'BW', '267', 'Gaborone', 'BWP', 'P', '.bw', 'Botswana', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Africa/Gaborone\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"보츠와나\",\"br\":\"Botsuana\",\"pt\":\"Botsuana\",\"nl\":\"Botswana\",\"hr\":\"Bocvana\",\"fa\":\"بوتسوانا\",\"de\":\"Botswana\",\"es\":\"Botswana\",\"fr\":\"Botswana\",\"ja\":\"ボツワナ\",\"it\":\"Botswana\",\"cn\":\"博茨瓦纳\"}', '-22.00000000', '24.00000000', '🇧🇼', 'U+1F1E7 U+1F1FC', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q963'),
(30, 'Bouvet Island', 'BVT', '074', 'BV', '0055', '', 'NOK', 'kr', '.bv', 'Bouvetøya', '', '', '[{\"zoneName\":\"Europe/Oslo\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"부벳 섬\",\"br\":\"Ilha Bouvet\",\"pt\":\"Ilha Bouvet\",\"nl\":\"Bouveteiland\",\"hr\":\"Otok Bouvet\",\"fa\":\"جزیره بووه\",\"de\":\"Bouvetinsel\",\"es\":\"Isla Bouvet\",\"fr\":\"Île Bouvet\",\"ja\":\"ブーベ島\",\"it\":\"Isola Bouvet\",\"cn\":\"布维岛\"}', '-54.43333333', '3.40000000', '🇧🇻', 'U+1F1E7 U+1F1FB', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(31, 'Brazil', 'BRA', '076', 'BR', '55', 'Brasilia', 'BRL', 'R$', '.br', 'Brasil', 'Americas', 'South America', '[{\"zoneName\":\"America/Araguaina\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"},{\"zoneName\":\"America/Bahia\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"},{\"zoneName\":\"America/Belem\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"},{\"zoneName\":\"America/Boa_Vista\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AMT\",\"tzName\":\"Amazon Time (Brazil)[3\"},{\"zoneName\":\"America/Campo_Grande\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AMT\",\"tzName\":\"Amazon Time (Brazil)[3\"},{\"zoneName\":\"America/Cuiaba\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasilia Time\"},{\"zoneName\":\"America/Eirunepe\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"ACT\",\"tzName\":\"Acre Time\"},{\"zoneName\":\"America/Fortaleza\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"},{\"zoneName\":\"America/Maceio\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"},{\"zoneName\":\"America/Manaus\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AMT\",\"tzName\":\"Amazon Time (Brazil)\"},{\"zoneName\":\"America/Noronha\",\"gmtOffset\":-7200,\"gmtOffsetName\":\"UTC-02:00\",\"abbreviation\":\"FNT\",\"tzName\":\"Fernando de Noronha Time\"},{\"zoneName\":\"America/Porto_Velho\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AMT\",\"tzName\":\"Amazon Time (Brazil)[3\"},{\"zoneName\":\"America/Recife\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"},{\"zoneName\":\"America/Rio_Branco\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"ACT\",\"tzName\":\"Acre Time\"},{\"zoneName\":\"America/Santarem\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"},{\"zoneName\":\"America/Sao_Paulo\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"BRT\",\"tzName\":\"Brasília Time\"}]', '{\"kr\":\"브라질\",\"br\":\"Brasil\",\"pt\":\"Brasil\",\"nl\":\"Brazilië\",\"hr\":\"Brazil\",\"fa\":\"برزیل\",\"de\":\"Brasilien\",\"es\":\"Brasil\",\"fr\":\"Brésil\",\"ja\":\"ブラジル\",\"it\":\"Brasile\",\"cn\":\"巴西\"}', '-10.00000000', '-55.00000000', '🇧🇷', 'U+1F1E7 U+1F1F7', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q155'),
(32, 'British Indian Ocean Territory', 'IOT', '086', 'IO', '246', 'Diego Garcia', 'USD', '$', '.io', 'British Indian Ocean Territory', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian/Chagos\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"IOT\",\"tzName\":\"Indian Ocean Time\"}]', '{\"kr\":\"영국령 인도양 지역\",\"br\":\"Território Britânico do Oceano íÍdico\",\"pt\":\"Território Britânico do Oceano Índico\",\"nl\":\"Britse Gebieden in de Indische Oceaan\",\"hr\":\"Britanski Indijskooceanski teritorij\",\"fa\":\"قلمرو بریتانیا در اقیانوس هند\",\"de\":\"Britisches Territorium im Indischen Ozean\",\"es\":\"Territorio Británico del Océano Índico\",\"fr\":\"Territoire britannique de l\'océan Indien\",\"ja\":\"イギリス領インド洋地域\",\"it\":\"Territorio britannico dell\'oceano indiano\",\"cn\":\"英属印度洋领地\"}', '-6.00000000', '71.50000000', '🇮🇴', 'U+1F1EE U+1F1F4', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(33, 'Brunei', 'BRN', '096', 'BN', '673', 'Bandar Seri Begawan', 'BND', 'B$', '.bn', 'Negara Brunei Darussalam', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Brunei\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"BNT\",\"tzName\":\"Brunei Darussalam Time\"}]', '{\"kr\":\"브루나이\",\"br\":\"Brunei\",\"pt\":\"Brunei\",\"nl\":\"Brunei\",\"hr\":\"Brunej\",\"fa\":\"برونئی\",\"de\":\"Brunei\",\"es\":\"Brunei\",\"fr\":\"Brunei\",\"ja\":\"ブルネイ・ダルサラーム\",\"it\":\"Brunei\",\"cn\":\"文莱\"}', '4.50000000', '114.66666666', '🇧🇳', 'U+1F1E7 U+1F1F3', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q921'),
(34, 'Bulgaria', 'BGR', '100', 'BG', '359', 'Sofia', 'BGN', 'Лв.', '.bg', 'България', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Sofia\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"불가리아\",\"br\":\"Bulgária\",\"pt\":\"Bulgária\",\"nl\":\"Bulgarije\",\"hr\":\"Bugarska\",\"fa\":\"بلغارستان\",\"de\":\"Bulgarien\",\"es\":\"Bulgaria\",\"fr\":\"Bulgarie\",\"ja\":\"ブルガリア\",\"it\":\"Bulgaria\",\"cn\":\"保加利亚\"}', '43.00000000', '25.00000000', '🇧🇬', 'U+1F1E7 U+1F1EC', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q219'),
(35, 'Burkina Faso', 'BFA', '854', 'BF', '226', 'Ouagadougou', 'XOF', 'CFA', '.bf', 'Burkina Faso', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Ouagadougou\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"부르키나 파소\",\"br\":\"Burkina Faso\",\"pt\":\"Burquina Faso\",\"nl\":\"Burkina Faso\",\"hr\":\"Burkina Faso\",\"fa\":\"بورکینافاسو\",\"de\":\"Burkina Faso\",\"es\":\"Burkina Faso\",\"fr\":\"Burkina Faso\",\"ja\":\"ブルキナファソ\",\"it\":\"Burkina Faso\",\"cn\":\"布基纳法索\"}', '13.00000000', '-2.00000000', '🇧🇫', 'U+1F1E7 U+1F1EB', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q965'),
(36, 'Burundi', 'BDI', '108', 'BI', '257', 'Bujumbura', 'BIF', 'FBu', '.bi', 'Burundi', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Bujumbura\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"부룬디\",\"br\":\"Burundi\",\"pt\":\"Burúndi\",\"nl\":\"Burundi\",\"hr\":\"Burundi\",\"fa\":\"بوروندی\",\"de\":\"Burundi\",\"es\":\"Burundi\",\"fr\":\"Burundi\",\"ja\":\"ブルンジ\",\"it\":\"Burundi\",\"cn\":\"布隆迪\"}', '-3.50000000', '30.00000000', '🇧🇮', 'U+1F1E7 U+1F1EE', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q967'),
(37, 'Cambodia', 'KHM', '116', 'KH', '855', 'Phnom Penh', 'KHR', 'KHR', '.kh', 'Kâmpŭchéa', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Phnom_Penh\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"ICT\",\"tzName\":\"Indochina Time\"}]', '{\"kr\":\"캄보디아\",\"br\":\"Camboja\",\"pt\":\"Camboja\",\"nl\":\"Cambodja\",\"hr\":\"Kambodža\",\"fa\":\"کامبوج\",\"de\":\"Kambodscha\",\"es\":\"Camboya\",\"fr\":\"Cambodge\",\"ja\":\"カンボジア\",\"it\":\"Cambogia\",\"cn\":\"柬埔寨\"}', '13.00000000', '105.00000000', '🇰🇭', 'U+1F1F0 U+1F1ED', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q424'),
(38, 'Cameroon', 'CMR', '120', 'CM', '237', 'Yaounde', 'XAF', 'FCFA', '.cm', 'Cameroon', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Douala\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"카메룬\",\"br\":\"Camarões\",\"pt\":\"Camarões\",\"nl\":\"Kameroen\",\"hr\":\"Kamerun\",\"fa\":\"کامرون\",\"de\":\"Kamerun\",\"es\":\"Camerún\",\"fr\":\"Cameroun\",\"ja\":\"カメルーン\",\"it\":\"Camerun\",\"cn\":\"喀麦隆\"}', '6.00000000', '12.00000000', '🇨🇲', 'U+1F1E8 U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q1009'),
(39, 'Canada', 'CAN', '124', 'CA', '1', 'Ottawa', 'CAD', '$', '.ca', 'Canada', 'Americas', 'Northern America', '[{\"zoneName\":\"America/Atikokan\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America)\"},{\"zoneName\":\"America/Blanc-Sablon\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"},{\"zoneName\":\"America/Cambridge_Bay\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America/Creston\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America/Dawson\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America/Dawson_Creek\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America/Edmonton\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America/Fort_Nelson\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America)\"},{\"zoneName\":\"America/Glace_Bay\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"},{\"zoneName\":\"America/Goose_Bay\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"},{\"zoneName\":\"America/Halifax\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"},{\"zoneName\":\"America/Inuvik\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Iqaluit\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Moncton\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"},{\"zoneName\":\"America/Nipigon\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Pangnirtung\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Rainy_River\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Rankin_Inlet\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Regina\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Resolute\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/St_Johns\",\"gmtOffset\":-12600,\"gmtOffsetName\":\"UTC-03:30\",\"abbreviation\":\"NST\",\"tzName\":\"Newfoundland Standard Time\"},{\"zoneName\":\"America/Swift_Current\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Thunder_Bay\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Toronto\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Vancouver\",\"gmtOffset\":-28800,\"gmtOffsetName\":\"UTC-08:00\",\"abbreviation\":\"PST\",\"tzName\":\"Pacific Standard Time (North America\"},{\"zoneName\":\"America/Whitehorse\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Winnipeg\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Yellowknife\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"}]', '{\"kr\":\"캐나다\",\"br\":\"Canadá\",\"pt\":\"Canadá\",\"nl\":\"Canada\",\"hr\":\"Kanada\",\"fa\":\"کانادا\",\"de\":\"Kanada\",\"es\":\"Canadá\",\"fr\":\"Canada\",\"ja\":\"カナダ\",\"it\":\"Canada\",\"cn\":\"加拿大\"}', '60.00000000', '-95.00000000', '🇨🇦', 'U+1F1E8 U+1F1E6', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q16'),
(40, 'Cape Verde', 'CPV', '132', 'CV', '238', 'Praia', 'CVE', '$', '.cv', 'Cabo Verde', 'Africa', 'Western Africa', '[{\"zoneName\":\"Atlantic/Cape_Verde\",\"gmtOffset\":-3600,\"gmtOffsetName\":\"UTC-01:00\",\"abbreviation\":\"CVT\",\"tzName\":\"Cape Verde Time\"}]', '{\"kr\":\"카보베르데\",\"br\":\"Cabo Verde\",\"pt\":\"Cabo Verde\",\"nl\":\"Kaapverdië\",\"hr\":\"Zelenortska Republika\",\"fa\":\"کیپ ورد\",\"de\":\"Kap Verde\",\"es\":\"Cabo Verde\",\"fr\":\"Cap Vert\",\"ja\":\"カーボベルデ\",\"it\":\"Capo Verde\",\"cn\":\"佛得角\"}', '16.00000000', '-24.00000000', '🇨🇻', 'U+1F1E8 U+1F1FB', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q1011'),
(41, 'Cayman Islands', 'CYM', '136', 'KY', '1345', 'George Town', 'KYD', '$', '.ky', 'Cayman Islands', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Cayman\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"}]', '{\"kr\":\"케이먼 제도\",\"br\":\"Ilhas Cayman\",\"pt\":\"Ilhas Caimão\",\"nl\":\"Caymaneilanden\",\"hr\":\"Kajmanski otoci\",\"fa\":\"جزایر کیمن\",\"de\":\"Kaimaninseln\",\"es\":\"Islas Caimán\",\"fr\":\"Îles Caïmans\",\"ja\":\"ケイマン諸島\",\"it\":\"Isole Cayman\",\"cn\":\"开曼群岛\"}', '19.50000000', '-80.50000000', '🇰🇾', 'U+1F1F0 U+1F1FE', '2018-07-20 20:11:03', '2021-12-04 08:16:08', 1, NULL),
(42, 'Central African Republic', 'CAF', '140', 'CF', '236', 'Bangui', 'XAF', 'FCFA', '.cf', 'Ködörösêse tî Bêafrîka', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Bangui\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"중앙아프리카 공화국\",\"br\":\"República Centro-Africana\",\"pt\":\"República Centro-Africana\",\"nl\":\"Centraal-Afrikaanse Republiek\",\"hr\":\"Srednjoafrička Republika\",\"fa\":\"جمهوری آفریقای مرکزی\",\"de\":\"Zentralafrikanische Republik\",\"es\":\"República Centroafricana\",\"fr\":\"République centrafricaine\",\"ja\":\"中央アフリカ共和国\",\"it\":\"Repubblica Centrafricana\",\"cn\":\"中非\"}', '7.00000000', '21.00000000', '🇨🇫', 'U+1F1E8 U+1F1EB', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q929'),
(43, 'Chad', 'TCD', '148', 'TD', '235', 'N\'Djamena', 'XAF', 'FCFA', '.td', 'Tchad', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Ndjamena\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"차드\",\"br\":\"Chade\",\"pt\":\"Chade\",\"nl\":\"Tsjaad\",\"hr\":\"Čad\",\"fa\":\"چاد\",\"de\":\"Tschad\",\"es\":\"Chad\",\"fr\":\"Tchad\",\"ja\":\"チャド\",\"it\":\"Ciad\",\"cn\":\"乍得\"}', '15.00000000', '19.00000000', '🇹🇩', 'U+1F1F9 U+1F1E9', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q657'),
(44, 'Chile', 'CHL', '152', 'CL', '56', 'Santiago', 'CLP', '$', '.cl', 'Chile', 'Americas', 'South America', '[{\"zoneName\":\"America/Punta_Arenas\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"CLST\",\"tzName\":\"Chile Summer Time\"},{\"zoneName\":\"America/Santiago\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"CLST\",\"tzName\":\"Chile Summer Time\"},{\"zoneName\":\"Pacific/Easter\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EASST\",\"tzName\":\"Easter Island Summer Time\"}]', '{\"kr\":\"칠리\",\"br\":\"Chile\",\"pt\":\"Chile\",\"nl\":\"Chili\",\"hr\":\"Čile\",\"fa\":\"شیلی\",\"de\":\"Chile\",\"es\":\"Chile\",\"fr\":\"Chili\",\"ja\":\"チリ\",\"it\":\"Cile\",\"cn\":\"智利\"}', '-30.00000000', '-71.00000000', '🇨🇱', 'U+1F1E8 U+1F1F1', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q298'),
(45, 'China', 'CHN', '156', 'CN', '86', 'Beijing', 'CNY', '¥', '.cn', '中国', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Shanghai\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"CST\",\"tzName\":\"China Standard Time\"},{\"zoneName\":\"Asia/Urumqi\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"XJT\",\"tzName\":\"China Standard Time\"}]', '{\"kr\":\"중국\",\"br\":\"China\",\"pt\":\"China\",\"nl\":\"China\",\"hr\":\"Kina\",\"fa\":\"چین\",\"de\":\"China\",\"es\":\"China\",\"fr\":\"Chine\",\"ja\":\"中国\",\"it\":\"Cina\",\"cn\":\"中国\"}', '35.00000000', '105.00000000', '🇨🇳', 'U+1F1E8 U+1F1F3', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q148'),
(46, 'Christmas Island', 'CXR', '162', 'CX', '61', 'Flying Fish Cove', 'AUD', '$', '.cx', 'Christmas Island', 'Oceania', 'Australia and New Zealand', '[{\"zoneName\":\"Indian/Christmas\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"CXT\",\"tzName\":\"Christmas Island Time\"}]', '{\"kr\":\"크리스마스 섬\",\"br\":\"Ilha Christmas\",\"pt\":\"Ilha do Natal\",\"nl\":\"Christmaseiland\",\"hr\":\"Božićni otok\",\"fa\":\"جزیره کریسمس\",\"de\":\"Weihnachtsinsel\",\"es\":\"Isla de Navidad\",\"fr\":\"Île Christmas\",\"ja\":\"クリスマス島\",\"it\":\"Isola di Natale\",\"cn\":\"圣诞岛\"}', '-10.50000000', '105.66666666', '🇨🇽', 'U+1F1E8 U+1F1FD', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(47, 'Cocos (Keeling) Islands', 'CCK', '166', 'CC', '61', 'West Island', 'AUD', '$', '.cc', 'Cocos (Keeling) Islands', 'Oceania', 'Australia and New Zealand', '[{\"zoneName\":\"Indian/Cocos\",\"gmtOffset\":23400,\"gmtOffsetName\":\"UTC+06:30\",\"abbreviation\":\"CCT\",\"tzName\":\"Cocos Islands Time\"}]', '{\"kr\":\"코코스 제도\",\"br\":\"Ilhas Cocos\",\"pt\":\"Ilhas dos Cocos\",\"nl\":\"Cocoseilanden\",\"hr\":\"Kokosovi Otoci\",\"fa\":\"جزایر کوکوس\",\"de\":\"Kokosinseln\",\"es\":\"Islas Cocos o Islas Keeling\",\"fr\":\"Îles Cocos\",\"ja\":\"ココス（キーリング）諸島\",\"it\":\"Isole Cocos e Keeling\",\"cn\":\"科科斯（基林）群岛\"}', '-12.50000000', '96.83333333', '🇨🇨', 'U+1F1E8 U+1F1E8', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(48, 'Colombia', 'COL', '170', 'CO', '57', 'Bogota', 'COP', '$', '.co', 'Colombia', 'Americas', 'South America', '[{\"zoneName\":\"America/Bogota\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"COT\",\"tzName\":\"Colombia Time\"}]', '{\"kr\":\"콜롬비아\",\"br\":\"Colômbia\",\"pt\":\"Colômbia\",\"nl\":\"Colombia\",\"hr\":\"Kolumbija\",\"fa\":\"کلمبیا\",\"de\":\"Kolumbien\",\"es\":\"Colombia\",\"fr\":\"Colombie\",\"ja\":\"コロンビア\",\"it\":\"Colombia\",\"cn\":\"哥伦比亚\"}', '4.00000000', '-72.00000000', '🇨🇴', 'U+1F1E8 U+1F1F4', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q739'),
(49, 'Comoros', 'COM', '174', 'KM', '269', 'Moroni', 'KMF', 'CF', '.km', 'Komori', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian/Comoro\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"코모로\",\"br\":\"Comores\",\"pt\":\"Comores\",\"nl\":\"Comoren\",\"hr\":\"Komori\",\"fa\":\"کومور\",\"de\":\"Union der Komoren\",\"es\":\"Comoras\",\"fr\":\"Comores\",\"ja\":\"コモロ\",\"it\":\"Comore\",\"cn\":\"科摩罗\"}', '-12.16666666', '44.25000000', '🇰🇲', 'U+1F1F0 U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q970'),
(50, 'Congo', 'COG', '178', 'CG', '242', 'Brazzaville', 'XAF', 'FC', '.cg', 'République du Congo', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Brazzaville\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"콩고\",\"br\":\"Congo\",\"pt\":\"Congo\",\"nl\":\"Congo [Republiek]\",\"hr\":\"Kongo\",\"fa\":\"کنگو\",\"de\":\"Kongo\",\"es\":\"Congo\",\"fr\":\"Congo\",\"ja\":\"コンゴ共和国\",\"it\":\"Congo\",\"cn\":\"刚果\"}', '-1.00000000', '15.00000000', '🇨🇬', 'U+1F1E8 U+1F1EC', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q971'),
(51, 'Democratic Republic of the Congo', 'COD', '180', 'CD', '243', 'Kinshasa', 'CDF', 'FC', '.cd', 'République démocratique du Congo', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Kinshasa\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"},{\"zoneName\":\"Africa/Lubumbashi\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"콩고 민주 공화국\",\"br\":\"RD Congo\",\"pt\":\"RD Congo\",\"nl\":\"Congo [DRC]\",\"hr\":\"Kongo, Demokratska Republika\",\"fa\":\"جمهوری کنگو\",\"de\":\"Kongo (Dem. Rep.)\",\"es\":\"Congo (Rep. Dem.)\",\"fr\":\"Congo (Rép. dém.)\",\"ja\":\"コンゴ民主共和国\",\"it\":\"Congo (Rep. Dem.)\",\"cn\":\"刚果（金）\"}', '0.00000000', '25.00000000', '🇨🇩', 'U+1F1E8 U+1F1E9', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q974'),
(52, 'Cook Islands', 'COK', '184', 'CK', '682', 'Avarua', 'NZD', '$', '.ck', 'Cook Islands', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Rarotonga\",\"gmtOffset\":-36000,\"gmtOffsetName\":\"UTC-10:00\",\"abbreviation\":\"CKT\",\"tzName\":\"Cook Island Time\"}]', '{\"kr\":\"쿡 제도\",\"br\":\"Ilhas Cook\",\"pt\":\"Ilhas Cook\",\"nl\":\"Cookeilanden\",\"hr\":\"Cookovo Otočje\",\"fa\":\"جزایر کوک\",\"de\":\"Cookinseln\",\"es\":\"Islas Cook\",\"fr\":\"Îles Cook\",\"ja\":\"クック諸島\",\"it\":\"Isole Cook\",\"cn\":\"库克群岛\"}', '-21.23333333', '-159.76666666', '🇨🇰', 'U+1F1E8 U+1F1F0', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q26988'),
(53, 'Costa Rica', 'CRI', '188', 'CR', '506', 'San Jose', 'CRC', '₡', '.cr', 'Costa Rica', 'Americas', 'Central America', '[{\"zoneName\":\"America/Costa_Rica\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"}]', '{\"kr\":\"코스타리카\",\"br\":\"Costa Rica\",\"pt\":\"Costa Rica\",\"nl\":\"Costa Rica\",\"hr\":\"Kostarika\",\"fa\":\"کاستاریکا\",\"de\":\"Costa Rica\",\"es\":\"Costa Rica\",\"fr\":\"Costa Rica\",\"ja\":\"コスタリカ\",\"it\":\"Costa Rica\",\"cn\":\"哥斯达黎加\"}', '10.00000000', '-84.00000000', '🇨🇷', 'U+1F1E8 U+1F1F7', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q800'),
(54, 'Cote D\'Ivoire (Ivory Coast)', 'CIV', '384', 'CI', '225', 'Yamoussoukro', 'XOF', 'CFA', '.ci', NULL, 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Abidjan\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"코트디부아르\",\"br\":\"Costa do Marfim\",\"pt\":\"Costa do Marfim\",\"nl\":\"Ivoorkust\",\"hr\":\"Obala Bjelokosti\",\"fa\":\"ساحل عاج\",\"de\":\"Elfenbeinküste\",\"es\":\"Costa de Marfil\",\"fr\":\"Côte d\'Ivoire\",\"ja\":\"コートジボワール\",\"it\":\"Costa D\'Avorio\",\"cn\":\"科特迪瓦\"}', '8.00000000', '-5.00000000', '🇨🇮', 'U+1F1E8 U+1F1EE', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q1008'),
(55, 'Croatia', 'HRV', '191', 'HR', '385', 'Zagreb', 'HRK', 'kn', '.hr', 'Hrvatska', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Zagreb\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"크로아티아\",\"br\":\"Croácia\",\"pt\":\"Croácia\",\"nl\":\"Kroatië\",\"hr\":\"Hrvatska\",\"fa\":\"کرواسی\",\"de\":\"Kroatien\",\"es\":\"Croacia\",\"fr\":\"Croatie\",\"ja\":\"クロアチア\",\"it\":\"Croazia\",\"cn\":\"克罗地亚\"}', '45.16666666', '15.50000000', '🇭🇷', 'U+1F1ED U+1F1F7', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q224'),
(56, 'Cuba', 'CUB', '192', 'CU', '53', 'Havana', 'CUP', '$', '.cu', 'Cuba', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Havana\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"CST\",\"tzName\":\"Cuba Standard Time\"}]', '{\"kr\":\"쿠바\",\"br\":\"Cuba\",\"pt\":\"Cuba\",\"nl\":\"Cuba\",\"hr\":\"Kuba\",\"fa\":\"کوبا\",\"de\":\"Kuba\",\"es\":\"Cuba\",\"fr\":\"Cuba\",\"ja\":\"キューバ\",\"it\":\"Cuba\",\"cn\":\"古巴\"}', '21.50000000', '-80.00000000', '🇨🇺', 'U+1F1E8 U+1F1FA', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q241'),
(57, 'Cyprus', 'CYP', '196', 'CY', '357', 'Nicosia', 'EUR', '€', '.cy', 'Κύπρος', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Asia/Famagusta\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"},{\"zoneName\":\"Asia/Nicosia\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"키프로스\",\"br\":\"Chipre\",\"pt\":\"Chipre\",\"nl\":\"Cyprus\",\"hr\":\"Cipar\",\"fa\":\"قبرس\",\"de\":\"Zypern\",\"es\":\"Chipre\",\"fr\":\"Chypre\",\"ja\":\"キプロス\",\"it\":\"Cipro\",\"cn\":\"塞浦路斯\"}', '35.00000000', '33.00000000', '🇨🇾', 'U+1F1E8 U+1F1FE', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q229'),
(58, 'Czech Republic', 'CZE', '203', 'CZ', '420', 'Prague', 'CZK', 'Kč', '.cz', 'Česká republika', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Prague\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"체코\",\"br\":\"República Tcheca\",\"pt\":\"República Checa\",\"nl\":\"Tsjechië\",\"hr\":\"Češka\",\"fa\":\"جمهوری چک\",\"de\":\"Tschechische Republik\",\"es\":\"República Checa\",\"fr\":\"République tchèque\",\"ja\":\"チェコ\",\"it\":\"Repubblica Ceca\",\"cn\":\"捷克\"}', '49.75000000', '15.50000000', '🇨🇿', 'U+1F1E8 U+1F1FF', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q213'),
(59, 'Denmark', 'DNK', '208', 'DK', '45', 'Copenhagen', 'DKK', 'Kr.', '.dk', 'Danmark', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Copenhagen\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"덴마크\",\"br\":\"Dinamarca\",\"pt\":\"Dinamarca\",\"nl\":\"Denemarken\",\"hr\":\"Danska\",\"fa\":\"دانمارک\",\"de\":\"Dänemark\",\"es\":\"Dinamarca\",\"fr\":\"Danemark\",\"ja\":\"デンマーク\",\"it\":\"Danimarca\",\"cn\":\"丹麦\"}', '56.00000000', '10.00000000', '🇩🇰', 'U+1F1E9 U+1F1F0', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q35');
INSERT INTO `countries` (`id`, `name`, `iso3`, `numeric_code`, `iso2`, `phonecode`, `capital`, `currency`, `currency_symbol`, `tld`, `native`, `region`, `subregion`, `timezones`, `translations`, `latitude`, `longitude`, `emoji`, `emojiU`, `created_at`, `updated_at`, `flag`, `wikiDataId`) VALUES
(60, 'Djibouti', 'DJI', '262', 'DJ', '253', 'Djibouti', 'DJF', 'Fdj', '.dj', 'Djibouti', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Djibouti\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"지부티\",\"br\":\"Djibuti\",\"pt\":\"Djibuti\",\"nl\":\"Djibouti\",\"hr\":\"Džibuti\",\"fa\":\"جیبوتی\",\"de\":\"Dschibuti\",\"es\":\"Yibuti\",\"fr\":\"Djibouti\",\"ja\":\"ジブチ\",\"it\":\"Gibuti\",\"cn\":\"吉布提\"}', '11.50000000', '43.00000000', '🇩🇯', 'U+1F1E9 U+1F1EF', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q977'),
(61, 'Dominica', 'DMA', '212', 'DM', '1767', 'Roseau', 'XCD', '$', '.dm', 'Dominica', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Dominica\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"도미니카 연방\",\"br\":\"Dominica\",\"pt\":\"Dominica\",\"nl\":\"Dominica\",\"hr\":\"Dominika\",\"fa\":\"دومینیکا\",\"de\":\"Dominica\",\"es\":\"Dominica\",\"fr\":\"Dominique\",\"ja\":\"ドミニカ国\",\"it\":\"Dominica\",\"cn\":\"多米尼加\"}', '15.41666666', '-61.33333333', '🇩🇲', 'U+1F1E9 U+1F1F2', '2018-07-20 20:11:03', '2021-12-04 08:15:54', 1, 'Q784'),
(62, 'Dominican Republic', 'DOM', '214', 'DO', '1809', 'Santo Domingo', 'DOP', '$', '.do', 'República Dominicana', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Santo_Domingo\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"도미니카 공화국\",\"br\":\"República Dominicana\",\"pt\":\"República Dominicana\",\"nl\":\"Dominicaanse Republiek\",\"hr\":\"Dominikanska Republika\",\"fa\":\"جمهوری دومینیکن\",\"de\":\"Dominikanische Republik\",\"es\":\"República Dominicana\",\"fr\":\"République dominicaine\",\"ja\":\"ドミニカ共和国\",\"it\":\"Repubblica Dominicana\",\"cn\":\"多明尼加共和国\"}', '19.00000000', '-70.66666666', '🇩🇴', 'U+1F1E9 U+1F1F4', '2018-07-20 20:11:03', '2021-12-04 08:15:46', 1, 'Q786'),
(63, 'East Timor', 'TLS', '626', 'TL', '670', 'Dili', 'USD', '$', '.tl', 'Timor-Leste', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Dili\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"TLT\",\"tzName\":\"Timor Leste Time\"}]', '{\"kr\":\"동티모르\",\"br\":\"Timor Leste\",\"pt\":\"Timor Leste\",\"nl\":\"Oost-Timor\",\"hr\":\"Istočni Timor\",\"fa\":\"تیمور شرقی\",\"de\":\"Timor-Leste\",\"es\":\"Timor Oriental\",\"fr\":\"Timor oriental\",\"ja\":\"東ティモール\",\"it\":\"Timor Est\",\"cn\":\"东帝汶\"}', '-8.83333333', '125.91666666', '🇹🇱', 'U+1F1F9 U+1F1F1', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q574'),
(64, 'Ecuador', 'ECU', '218', 'EC', '593', 'Quito', 'USD', '$', '.ec', 'Ecuador', 'Americas', 'South America', '[{\"zoneName\":\"America/Guayaquil\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"ECT\",\"tzName\":\"Ecuador Time\"},{\"zoneName\":\"Pacific/Galapagos\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"GALT\",\"tzName\":\"Galápagos Time\"}]', '{\"kr\":\"에콰도르\",\"br\":\"Equador\",\"pt\":\"Equador\",\"nl\":\"Ecuador\",\"hr\":\"Ekvador\",\"fa\":\"اکوادور\",\"de\":\"Ecuador\",\"es\":\"Ecuador\",\"fr\":\"Équateur\",\"ja\":\"エクアドル\",\"it\":\"Ecuador\",\"cn\":\"厄瓜多尔\"}', '-2.00000000', '-77.50000000', '🇪🇨', 'U+1F1EA U+1F1E8', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q736'),
(65, 'Egypt', 'EGY', '818', 'EG', '20', 'Cairo', 'EGP', 'ج.م', '.eg', 'مصر‎', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa/Cairo\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"이집트\",\"br\":\"Egito\",\"pt\":\"Egipto\",\"nl\":\"Egypte\",\"hr\":\"Egipat\",\"fa\":\"مصر\",\"de\":\"Ägypten\",\"es\":\"Egipto\",\"fr\":\"Égypte\",\"ja\":\"エジプト\",\"it\":\"Egitto\",\"cn\":\"埃及\"}', '27.00000000', '30.00000000', '🇪🇬', 'U+1F1EA U+1F1EC', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q79'),
(66, 'El Salvador', 'SLV', '222', 'SV', '503', 'San Salvador', 'USD', '$', '.sv', 'El Salvador', 'Americas', 'Central America', '[{\"zoneName\":\"America/El_Salvador\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"}]', '{\"kr\":\"엘살바도르\",\"br\":\"El Salvador\",\"pt\":\"El Salvador\",\"nl\":\"El Salvador\",\"hr\":\"Salvador\",\"fa\":\"السالوادور\",\"de\":\"El Salvador\",\"es\":\"El Salvador\",\"fr\":\"Salvador\",\"ja\":\"エルサルバドル\",\"it\":\"El Salvador\",\"cn\":\"萨尔瓦多\"}', '13.83333333', '-88.91666666', '🇸🇻', 'U+1F1F8 U+1F1FB', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q792'),
(67, 'Equatorial Guinea', 'GNQ', '226', 'GQ', '240', 'Malabo', 'XAF', 'FCFA', '.gq', 'Guinea Ecuatorial', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Malabo\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"적도 기니\",\"br\":\"Guiné Equatorial\",\"pt\":\"Guiné Equatorial\",\"nl\":\"Equatoriaal-Guinea\",\"hr\":\"Ekvatorijalna Gvineja\",\"fa\":\"گینه استوایی\",\"de\":\"Äquatorial-Guinea\",\"es\":\"Guinea Ecuatorial\",\"fr\":\"Guinée-Équatoriale\",\"ja\":\"赤道ギニア\",\"it\":\"Guinea Equatoriale\",\"cn\":\"赤道几内亚\"}', '2.00000000', '10.00000000', '🇬🇶', 'U+1F1EC U+1F1F6', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q983'),
(68, 'Eritrea', 'ERI', '232', 'ER', '291', 'Asmara', 'ERN', 'Nfk', '.er', 'ኤርትራ', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Asmara\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"에리트레아\",\"br\":\"Eritreia\",\"pt\":\"Eritreia\",\"nl\":\"Eritrea\",\"hr\":\"Eritreja\",\"fa\":\"اریتره\",\"de\":\"Eritrea\",\"es\":\"Eritrea\",\"fr\":\"Érythrée\",\"ja\":\"エリトリア\",\"it\":\"Eritrea\",\"cn\":\"厄立特里亚\"}', '15.00000000', '39.00000000', '🇪🇷', 'U+1F1EA U+1F1F7', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q986'),
(69, 'Estonia', 'EST', '233', 'EE', '372', 'Tallinn', 'EUR', '€', '.ee', 'Eesti', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Tallinn\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"에스토니아\",\"br\":\"Estônia\",\"pt\":\"Estónia\",\"nl\":\"Estland\",\"hr\":\"Estonija\",\"fa\":\"استونی\",\"de\":\"Estland\",\"es\":\"Estonia\",\"fr\":\"Estonie\",\"ja\":\"エストニア\",\"it\":\"Estonia\",\"cn\":\"爱沙尼亚\"}', '59.00000000', '26.00000000', '🇪🇪', 'U+1F1EA U+1F1EA', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q191'),
(70, 'Ethiopia', 'ETH', '231', 'ET', '251', 'Addis Ababa', 'ETB', 'Nkf', '.et', 'ኢትዮጵያ', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Addis_Ababa\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"에티오피아\",\"br\":\"Etiópia\",\"pt\":\"Etiópia\",\"nl\":\"Ethiopië\",\"hr\":\"Etiopija\",\"fa\":\"اتیوپی\",\"de\":\"Äthiopien\",\"es\":\"Etiopía\",\"fr\":\"Éthiopie\",\"ja\":\"エチオピア\",\"it\":\"Etiopia\",\"cn\":\"埃塞俄比亚\"}', '8.00000000', '38.00000000', '🇪🇹', 'U+1F1EA U+1F1F9', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q115'),
(71, 'Falkland Islands', 'FLK', '238', 'FK', '500', 'Stanley', 'FKP', '£', '.fk', 'Falkland Islands', 'Americas', 'South America', '[{\"zoneName\":\"Atlantic/Stanley\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"FKST\",\"tzName\":\"Falkland Islands Summer Time\"}]', '{\"kr\":\"포클랜드 제도\",\"br\":\"Ilhas Malvinas\",\"pt\":\"Ilhas Falkland\",\"nl\":\"Falklandeilanden [Islas Malvinas]\",\"hr\":\"Falklandski Otoci\",\"fa\":\"جزایر فالکلند\",\"de\":\"Falklandinseln\",\"es\":\"Islas Malvinas\",\"fr\":\"Îles Malouines\",\"ja\":\"フォークランド（マルビナス）諸島\",\"it\":\"Isole Falkland o Isole Malvine\",\"cn\":\"福克兰群岛\"}', '-51.75000000', '-59.00000000', '🇫🇰', 'U+1F1EB U+1F1F0', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(72, 'Faroe Islands', 'FRO', '234', 'FO', '298', 'Torshavn', 'DKK', 'Kr.', '.fo', 'Føroyar', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Atlantic/Faroe\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"WET\",\"tzName\":\"Western European Time\"}]', '{\"kr\":\"페로 제도\",\"br\":\"Ilhas Faroé\",\"pt\":\"Ilhas Faroé\",\"nl\":\"Faeröer\",\"hr\":\"Farski Otoci\",\"fa\":\"جزایر فارو\",\"de\":\"Färöer-Inseln\",\"es\":\"Islas Faroe\",\"fr\":\"Îles Féroé\",\"ja\":\"フェロー諸島\",\"it\":\"Isole Far Oer\",\"cn\":\"法罗群岛\"}', '62.00000000', '-7.00000000', '🇫🇴', 'U+1F1EB U+1F1F4', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(73, 'Fiji Islands', 'FJI', '242', 'FJ', '679', 'Suva', 'FJD', 'FJ$', '.fj', 'Fiji', 'Oceania', 'Melanesia', '[{\"zoneName\":\"Pacific/Fiji\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"FJT\",\"tzName\":\"Fiji Time\"}]', '{\"kr\":\"피지\",\"br\":\"Fiji\",\"pt\":\"Fiji\",\"nl\":\"Fiji\",\"hr\":\"Fiđi\",\"fa\":\"فیجی\",\"de\":\"Fidschi\",\"es\":\"Fiyi\",\"fr\":\"Fidji\",\"ja\":\"フィジー\",\"it\":\"Figi\",\"cn\":\"斐济\"}', '-18.00000000', '175.00000000', '🇫🇯', 'U+1F1EB U+1F1EF', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q712'),
(74, 'Finland', 'FIN', '246', 'FI', '358', 'Helsinki', 'EUR', '€', '.fi', 'Suomi', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Helsinki\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"핀란드\",\"br\":\"Finlândia\",\"pt\":\"Finlândia\",\"nl\":\"Finland\",\"hr\":\"Finska\",\"fa\":\"فنلاند\",\"de\":\"Finnland\",\"es\":\"Finlandia\",\"fr\":\"Finlande\",\"ja\":\"フィンランド\",\"it\":\"Finlandia\",\"cn\":\"芬兰\"}', '64.00000000', '26.00000000', '🇫🇮', 'U+1F1EB U+1F1EE', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q33'),
(75, 'France', 'FRA', '250', 'FR', '33', 'Paris', 'EUR', '€', '.fr', 'France', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Paris\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"프랑스\",\"br\":\"França\",\"pt\":\"França\",\"nl\":\"Frankrijk\",\"hr\":\"Francuska\",\"fa\":\"فرانسه\",\"de\":\"Frankreich\",\"es\":\"Francia\",\"fr\":\"France\",\"ja\":\"フランス\",\"it\":\"Francia\",\"cn\":\"法国\"}', '46.00000000', '2.00000000', '🇫🇷', 'U+1F1EB U+1F1F7', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q142'),
(76, 'French Guiana', 'GUF', '254', 'GF', '594', 'Cayenne', 'EUR', '€', '.gf', 'Guyane française', 'Americas', 'South America', '[{\"zoneName\":\"America/Cayenne\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"GFT\",\"tzName\":\"French Guiana Time\"}]', '{\"kr\":\"프랑스령 기아나\",\"br\":\"Guiana Francesa\",\"pt\":\"Guiana Francesa\",\"nl\":\"Frans-Guyana\",\"hr\":\"Francuska Gvajana\",\"fa\":\"گویان فرانسه\",\"de\":\"Französisch Guyana\",\"es\":\"Guayana Francesa\",\"fr\":\"Guayane\",\"ja\":\"フランス領ギアナ\",\"it\":\"Guyana francese\",\"cn\":\"法属圭亚那\"}', '4.00000000', '-53.00000000', '🇬🇫', 'U+1F1EC U+1F1EB', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(77, 'French Polynesia', 'PYF', '258', 'PF', '689', 'Papeete', 'XPF', '₣', '.pf', 'Polynésie française', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Gambier\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"GAMT\",\"tzName\":\"Gambier Islands Time\"},{\"zoneName\":\"Pacific/Marquesas\",\"gmtOffset\":-34200,\"gmtOffsetName\":\"UTC-09:30\",\"abbreviation\":\"MART\",\"tzName\":\"Marquesas Islands Time\"},{\"zoneName\":\"Pacific/Tahiti\",\"gmtOffset\":-36000,\"gmtOffsetName\":\"UTC-10:00\",\"abbreviation\":\"TAHT\",\"tzName\":\"Tahiti Time\"}]', '{\"kr\":\"프랑스령 폴리네시아\",\"br\":\"Polinésia Francesa\",\"pt\":\"Polinésia Francesa\",\"nl\":\"Frans-Polynesië\",\"hr\":\"Francuska Polinezija\",\"fa\":\"پلی‌نزی فرانسه\",\"de\":\"Französisch-Polynesien\",\"es\":\"Polinesia Francesa\",\"fr\":\"Polynésie française\",\"ja\":\"フランス領ポリネシア\",\"it\":\"Polinesia Francese\",\"cn\":\"法属波利尼西亚\"}', '-15.00000000', '-140.00000000', '🇵🇫', 'U+1F1F5 U+1F1EB', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(78, 'French Southern Territories', 'ATF', '260', 'TF', '262', 'Port-aux-Francais', 'EUR', '€', '.tf', 'Territoire des Terres australes et antarctiques fr', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Indian/Kerguelen\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"TFT\",\"tzName\":\"French Southern and Antarctic Time\"}]', '{\"kr\":\"프랑스령 남방 및 남극\",\"br\":\"Terras Austrais e Antárticas Francesas\",\"pt\":\"Terras Austrais e Antárticas Francesas\",\"nl\":\"Franse Gebieden in de zuidelijke Indische Oceaan\",\"hr\":\"Francuski južni i antarktički teritoriji\",\"fa\":\"سرزمین‌های جنوبی و جنوبگانی فرانسه\",\"de\":\"Französische Süd- und Antarktisgebiete\",\"es\":\"Tierras Australes y Antárticas Francesas\",\"fr\":\"Terres australes et antarctiques françaises\",\"ja\":\"フランス領南方・南極地域\",\"it\":\"Territori Francesi del Sud\",\"cn\":\"法属南部领地\"}', '-49.25000000', '69.16700000', '🇹🇫', 'U+1F1F9 U+1F1EB', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(79, 'Gabon', 'GAB', '266', 'GA', '241', 'Libreville', 'XAF', 'FCFA', '.ga', 'Gabon', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Libreville\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"가봉\",\"br\":\"Gabão\",\"pt\":\"Gabão\",\"nl\":\"Gabon\",\"hr\":\"Gabon\",\"fa\":\"گابن\",\"de\":\"Gabun\",\"es\":\"Gabón\",\"fr\":\"Gabon\",\"ja\":\"ガボン\",\"it\":\"Gabon\",\"cn\":\"加蓬\"}', '-1.00000000', '11.75000000', '🇬🇦', 'U+1F1EC U+1F1E6', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q1000'),
(80, 'Gambia The', 'GMB', '270', 'GM', '220', 'Banjul', 'GMD', 'D', '.gm', 'Gambia', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Banjul\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"감비아\",\"br\":\"Gâmbia\",\"pt\":\"Gâmbia\",\"nl\":\"Gambia\",\"hr\":\"Gambija\",\"fa\":\"گامبیا\",\"de\":\"Gambia\",\"es\":\"Gambia\",\"fr\":\"Gambie\",\"ja\":\"ガンビア\",\"it\":\"Gambia\",\"cn\":\"冈比亚\"}', '13.46666666', '-16.56666666', '🇬🇲', 'U+1F1EC U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q1005'),
(81, 'Georgia', 'GEO', '268', 'GE', '995', 'Tbilisi', 'GEL', 'ლ', '.ge', 'საქართველო', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Tbilisi\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"GET\",\"tzName\":\"Georgia Standard Time\"}]', '{\"kr\":\"조지아\",\"br\":\"Geórgia\",\"pt\":\"Geórgia\",\"nl\":\"Georgië\",\"hr\":\"Gruzija\",\"fa\":\"گرجستان\",\"de\":\"Georgien\",\"es\":\"Georgia\",\"fr\":\"Géorgie\",\"ja\":\"グルジア\",\"it\":\"Georgia\",\"cn\":\"格鲁吉亚\"}', '42.00000000', '43.50000000', '🇬🇪', 'U+1F1EC U+1F1EA', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q230'),
(82, 'Germany', 'DEU', '276', 'DE', '49', 'Berlin', 'EUR', '€', '.de', 'Deutschland', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Berlin\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"},{\"zoneName\":\"Europe/Busingen\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"독일\",\"br\":\"Alemanha\",\"pt\":\"Alemanha\",\"nl\":\"Duitsland\",\"hr\":\"Njemačka\",\"fa\":\"آلمان\",\"de\":\"Deutschland\",\"es\":\"Alemania\",\"fr\":\"Allemagne\",\"ja\":\"ドイツ\",\"it\":\"Germania\",\"cn\":\"德国\"}', '51.00000000', '9.00000000', '🇩🇪', 'U+1F1E9 U+1F1EA', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q183'),
(83, 'Ghana', 'GHA', '288', 'GH', '233', 'Accra', 'GHS', 'GH₵', '.gh', 'Ghana', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Accra\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"가나\",\"br\":\"Gana\",\"pt\":\"Gana\",\"nl\":\"Ghana\",\"hr\":\"Gana\",\"fa\":\"غنا\",\"de\":\"Ghana\",\"es\":\"Ghana\",\"fr\":\"Ghana\",\"ja\":\"ガーナ\",\"it\":\"Ghana\",\"cn\":\"加纳\"}', '8.00000000', '-2.00000000', '🇬🇭', 'U+1F1EC U+1F1ED', '2018-07-20 20:11:03', '2022-03-03 22:58:52', 1, 'Q117'),
(84, 'Gibraltar', 'GIB', '292', 'GI', '350', 'Gibraltar', 'GIP', '£', '.gi', 'Gibraltar', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Gibraltar\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"지브롤터\",\"br\":\"Gibraltar\",\"pt\":\"Gibraltar\",\"nl\":\"Gibraltar\",\"hr\":\"Gibraltar\",\"fa\":\"جبل‌طارق\",\"de\":\"Gibraltar\",\"es\":\"Gibraltar\",\"fr\":\"Gibraltar\",\"ja\":\"ジブラルタル\",\"it\":\"Gibilterra\",\"cn\":\"直布罗陀\"}', '36.13333333', '-5.35000000', '🇬🇮', 'U+1F1EC U+1F1EE', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(85, 'Greece', 'GRC', '300', 'GR', '30', 'Athens', 'EUR', '€', '.gr', 'Ελλάδα', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Athens\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"그리스\",\"br\":\"Grécia\",\"pt\":\"Grécia\",\"nl\":\"Griekenland\",\"hr\":\"Grčka\",\"fa\":\"یونان\",\"de\":\"Griechenland\",\"es\":\"Grecia\",\"fr\":\"Grèce\",\"ja\":\"ギリシャ\",\"it\":\"Grecia\",\"cn\":\"希腊\"}', '39.00000000', '22.00000000', '🇬🇷', 'U+1F1EC U+1F1F7', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q41'),
(86, 'Greenland', 'GRL', '304', 'GL', '299', 'Nuuk', 'DKK', 'Kr.', '.gl', 'Kalaallit Nunaat', 'Americas', 'Northern America', '[{\"zoneName\":\"America/Danmarkshavn\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"},{\"zoneName\":\"America/Nuuk\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"WGT\",\"tzName\":\"West Greenland Time\"},{\"zoneName\":\"America/Scoresbysund\",\"gmtOffset\":-3600,\"gmtOffsetName\":\"UTC-01:00\",\"abbreviation\":\"EGT\",\"tzName\":\"Eastern Greenland Time\"},{\"zoneName\":\"America/Thule\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"그린란드\",\"br\":\"Groelândia\",\"pt\":\"Gronelândia\",\"nl\":\"Groenland\",\"hr\":\"Grenland\",\"fa\":\"گرینلند\",\"de\":\"Grönland\",\"es\":\"Groenlandia\",\"fr\":\"Groenland\",\"ja\":\"グリーンランド\",\"it\":\"Groenlandia\",\"cn\":\"格陵兰岛\"}', '72.00000000', '-40.00000000', '🇬🇱', 'U+1F1EC U+1F1F1', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(87, 'Grenada', 'GRD', '308', 'GD', '1473', 'St. George\'s', 'XCD', '$', '.gd', 'Grenada', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Grenada\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"그레나다\",\"br\":\"Granada\",\"pt\":\"Granada\",\"nl\":\"Grenada\",\"hr\":\"Grenada\",\"fa\":\"گرنادا\",\"de\":\"Grenada\",\"es\":\"Grenada\",\"fr\":\"Grenade\",\"ja\":\"グレナダ\",\"it\":\"Grenada\",\"cn\":\"格林纳达\"}', '12.11666666', '-61.66666666', '🇬🇩', 'U+1F1EC U+1F1E9', '2018-07-20 20:11:03', '2021-12-04 08:15:19', 1, 'Q769'),
(88, 'Guadeloupe', 'GLP', '312', 'GP', '590', 'Basse-Terre', 'EUR', '€', '.gp', 'Guadeloupe', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Guadeloupe\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"과들루프\",\"br\":\"Guadalupe\",\"pt\":\"Guadalupe\",\"nl\":\"Guadeloupe\",\"hr\":\"Gvadalupa\",\"fa\":\"جزیره گوادلوپ\",\"de\":\"Guadeloupe\",\"es\":\"Guadalupe\",\"fr\":\"Guadeloupe\",\"ja\":\"グアドループ\",\"it\":\"Guadeloupa\",\"cn\":\"瓜德罗普岛\"}', '16.25000000', '-61.58333300', '🇬🇵', 'U+1F1EC U+1F1F5', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(89, 'Guam', 'GUM', '316', 'GU', '1671', 'Hagatna', 'USD', '$', '.gu', 'Guam', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific/Guam\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"CHST\",\"tzName\":\"Chamorro Standard Time\"}]', '{\"kr\":\"괌\",\"br\":\"Guam\",\"pt\":\"Guame\",\"nl\":\"Guam\",\"hr\":\"Guam\",\"fa\":\"گوام\",\"de\":\"Guam\",\"es\":\"Guam\",\"fr\":\"Guam\",\"ja\":\"グアム\",\"it\":\"Guam\",\"cn\":\"关岛\"}', '13.46666666', '144.78333333', '🇬🇺', 'U+1F1EC U+1F1FA', '2018-07-20 20:11:03', '2021-12-04 08:15:11', 1, NULL),
(90, 'Guatemala', 'GTM', '320', 'GT', '502', 'Guatemala City', 'GTQ', 'Q', '.gt', 'Guatemala', 'Americas', 'Central America', '[{\"zoneName\":\"America/Guatemala\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"}]', '{\"kr\":\"과테말라\",\"br\":\"Guatemala\",\"pt\":\"Guatemala\",\"nl\":\"Guatemala\",\"hr\":\"Gvatemala\",\"fa\":\"گواتمالا\",\"de\":\"Guatemala\",\"es\":\"Guatemala\",\"fr\":\"Guatemala\",\"ja\":\"グアテマラ\",\"it\":\"Guatemala\",\"cn\":\"危地马拉\"}', '15.50000000', '-90.25000000', '🇬🇹', 'U+1F1EC U+1F1F9', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q774'),
(91, 'Guernsey and Alderney', 'GGY', '831', 'GG', '441481', 'St Peter Port', 'GBP', '£', '.gg', 'Guernsey', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Guernsey\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"건지, 올더니\",\"br\":\"Guernsey\",\"pt\":\"Guernsey\",\"nl\":\"Guernsey\",\"hr\":\"Guernsey\",\"fa\":\"گرنزی\",\"de\":\"Guernsey\",\"es\":\"Guernsey\",\"fr\":\"Guernesey\",\"ja\":\"ガーンジー\",\"it\":\"Guernsey\",\"cn\":\"根西岛\"}', '49.46666666', '-2.58333333', '🇬🇬', 'U+1F1EC U+1F1EC', '2018-07-20 20:11:03', '2021-12-04 08:14:59', 1, NULL),
(92, 'Guinea', 'GIN', '324', 'GN', '224', 'Conakry', 'GNF', 'FG', '.gn', 'Guinée', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Conakry\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"기니\",\"br\":\"Guiné\",\"pt\":\"Guiné\",\"nl\":\"Guinee\",\"hr\":\"Gvineja\",\"fa\":\"گینه\",\"de\":\"Guinea\",\"es\":\"Guinea\",\"fr\":\"Guinée\",\"ja\":\"ギニア\",\"it\":\"Guinea\",\"cn\":\"几内亚\"}', '11.00000000', '-10.00000000', '🇬🇳', 'U+1F1EC U+1F1F3', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q1006'),
(93, 'Guinea-Bissau', 'GNB', '624', 'GW', '245', 'Bissau', 'XOF', 'CFA', '.gw', 'Guiné-Bissau', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Bissau\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"기니비사우\",\"br\":\"Guiné-Bissau\",\"pt\":\"Guiné-Bissau\",\"nl\":\"Guinee-Bissau\",\"hr\":\"Gvineja Bisau\",\"fa\":\"گینه بیسائو\",\"de\":\"Guinea-Bissau\",\"es\":\"Guinea-Bisáu\",\"fr\":\"Guinée-Bissau\",\"ja\":\"ギニアビサウ\",\"it\":\"Guinea-Bissau\",\"cn\":\"几内亚比绍\"}', '12.00000000', '-15.00000000', '🇬🇼', 'U+1F1EC U+1F1FC', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q1007'),
(94, 'Guyana', 'GUY', '328', 'GY', '592', 'Georgetown', 'GYD', '$', '.gy', 'Guyana', 'Americas', 'South America', '[{\"zoneName\":\"America/Guyana\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"GYT\",\"tzName\":\"Guyana Time\"}]', '{\"kr\":\"가이아나\",\"br\":\"Guiana\",\"pt\":\"Guiana\",\"nl\":\"Guyana\",\"hr\":\"Gvajana\",\"fa\":\"گویان\",\"de\":\"Guyana\",\"es\":\"Guyana\",\"fr\":\"Guyane\",\"ja\":\"ガイアナ\",\"it\":\"Guyana\",\"cn\":\"圭亚那\"}', '5.00000000', '-59.00000000', '🇬🇾', 'U+1F1EC U+1F1FE', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q734'),
(95, 'Haiti', 'HTI', '332', 'HT', '509', 'Port-au-Prince', 'HTG', 'G', '.ht', 'Haïti', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Port-au-Prince\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"}]', '{\"kr\":\"아이티\",\"br\":\"Haiti\",\"pt\":\"Haiti\",\"nl\":\"Haïti\",\"hr\":\"Haiti\",\"fa\":\"هائیتی\",\"de\":\"Haiti\",\"es\":\"Haiti\",\"fr\":\"Haïti\",\"ja\":\"ハイチ\",\"it\":\"Haiti\",\"cn\":\"海地\"}', '19.00000000', '-72.41666666', '🇭🇹', 'U+1F1ED U+1F1F9', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q790'),
(96, 'Heard Island and McDonald Islands', 'HMD', '334', 'HM', '672', '', 'AUD', '$', '.hm', 'Heard Island and McDonald Islands', '', '', '[{\"zoneName\":\"Indian/Kerguelen\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"TFT\",\"tzName\":\"French Southern and Antarctic Time\"}]', '{\"kr\":\"허드 맥도날드 제도\",\"br\":\"Ilha Heard e Ilhas McDonald\",\"pt\":\"Ilha Heard e Ilhas McDonald\",\"nl\":\"Heard- en McDonaldeilanden\",\"hr\":\"Otok Heard i otočje McDonald\",\"fa\":\"جزیره هرد و جزایر مک‌دونالد\",\"de\":\"Heard und die McDonaldinseln\",\"es\":\"Islas Heard y McDonald\",\"fr\":\"Îles Heard-et-MacDonald\",\"ja\":\"ハード島とマクドナルド諸島\",\"it\":\"Isole Heard e McDonald\",\"cn\":\"赫德·唐纳岛及麦唐纳岛\"}', '-53.10000000', '72.51666666', '🇭🇲', 'U+1F1ED U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(97, 'Honduras', 'HND', '340', 'HN', '504', 'Tegucigalpa', 'HNL', 'L', '.hn', 'Honduras', 'Americas', 'Central America', '[{\"zoneName\":\"America/Tegucigalpa\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"}]', '{\"kr\":\"온두라스\",\"br\":\"Honduras\",\"pt\":\"Honduras\",\"nl\":\"Honduras\",\"hr\":\"Honduras\",\"fa\":\"هندوراس\",\"de\":\"Honduras\",\"es\":\"Honduras\",\"fr\":\"Honduras\",\"ja\":\"ホンジュラス\",\"it\":\"Honduras\",\"cn\":\"洪都拉斯\"}', '15.00000000', '-86.50000000', '🇭🇳', 'U+1F1ED U+1F1F3', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q783'),
(98, 'Hong Kong S.A.R.', 'HKG', '344', 'HK', '852', 'Hong Kong', 'HKD', '$', '.hk', '香港', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Hong_Kong\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"HKT\",\"tzName\":\"Hong Kong Time\"}]', '{\"kr\":\"홍콩\",\"br\":\"Hong Kong\",\"pt\":\"Hong Kong\",\"nl\":\"Hongkong\",\"hr\":\"Hong Kong\",\"fa\":\"هنگ‌کنگ\",\"de\":\"Hong Kong\",\"es\":\"Hong Kong\",\"fr\":\"Hong Kong\",\"ja\":\"香港\",\"it\":\"Hong Kong\",\"cn\":\"中国香港\"}', '22.25000000', '114.16666666', '🇭🇰', 'U+1F1ED U+1F1F0', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q8646'),
(99, 'Hungary', 'HUN', '348', 'HU', '36', 'Budapest', 'HUF', 'Ft', '.hu', 'Magyarország', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Budapest\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"헝가리\",\"br\":\"Hungria\",\"pt\":\"Hungria\",\"nl\":\"Hongarije\",\"hr\":\"Mađarska\",\"fa\":\"مجارستان\",\"de\":\"Ungarn\",\"es\":\"Hungría\",\"fr\":\"Hongrie\",\"ja\":\"ハンガリー\",\"it\":\"Ungheria\",\"cn\":\"匈牙利\"}', '47.00000000', '20.00000000', '🇭🇺', 'U+1F1ED U+1F1FA', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q28'),
(100, 'Iceland', 'ISL', '352', 'IS', '354', 'Reykjavik', 'ISK', 'kr', '.is', 'Ísland', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Atlantic/Reykjavik\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"아이슬란드\",\"br\":\"Islândia\",\"pt\":\"Islândia\",\"nl\":\"IJsland\",\"hr\":\"Island\",\"fa\":\"ایسلند\",\"de\":\"Island\",\"es\":\"Islandia\",\"fr\":\"Islande\",\"ja\":\"アイスランド\",\"it\":\"Islanda\",\"cn\":\"冰岛\"}', '65.00000000', '-18.00000000', '🇮🇸', 'U+1F1EE U+1F1F8', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q189'),
(101, 'India', 'IND', '356', 'IN', '91', 'New Delhi', 'INR', '₹', '.in', 'भारत', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Kolkata\",\"gmtOffset\":19800,\"gmtOffsetName\":\"UTC+05:30\",\"abbreviation\":\"IST\",\"tzName\":\"Indian Standard Time\"}]', '{\"kr\":\"인도\",\"br\":\"Índia\",\"pt\":\"Índia\",\"nl\":\"India\",\"hr\":\"Indija\",\"fa\":\"هند\",\"de\":\"Indien\",\"es\":\"India\",\"fr\":\"Inde\",\"ja\":\"インド\",\"it\":\"India\",\"cn\":\"印度\"}', '20.00000000', '77.00000000', '🇮🇳', 'U+1F1EE U+1F1F3', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q668'),
(102, 'Indonesia', 'IDN', '360', 'ID', '62', 'Jakarta', 'IDR', 'Rp', '.id', 'Indonesia', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Jakarta\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"WIB\",\"tzName\":\"Western Indonesian Time\"},{\"zoneName\":\"Asia/Jayapura\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"WIT\",\"tzName\":\"Eastern Indonesian Time\"},{\"zoneName\":\"Asia/Makassar\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"WITA\",\"tzName\":\"Central Indonesia Time\"},{\"zoneName\":\"Asia/Pontianak\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"WIB\",\"tzName\":\"Western Indonesian Time\"}]', '{\"kr\":\"인도네시아\",\"br\":\"Indonésia\",\"pt\":\"Indonésia\",\"nl\":\"Indonesië\",\"hr\":\"Indonezija\",\"fa\":\"اندونزی\",\"de\":\"Indonesien\",\"es\":\"Indonesia\",\"fr\":\"Indonésie\",\"ja\":\"インドネシア\",\"it\":\"Indonesia\",\"cn\":\"印度尼西亚\"}', '-5.00000000', '120.00000000', '🇮🇩', 'U+1F1EE U+1F1E9', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q252'),
(103, 'Iran', 'IRN', '364', 'IR', '98', 'Tehran', 'IRR', '﷼', '.ir', 'ایران', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Tehran\",\"gmtOffset\":12600,\"gmtOffsetName\":\"UTC+03:30\",\"abbreviation\":\"IRDT\",\"tzName\":\"Iran Daylight Time\"}]', '{\"kr\":\"이란\",\"br\":\"Irã\",\"pt\":\"Irão\",\"nl\":\"Iran\",\"hr\":\"Iran\",\"fa\":\"ایران\",\"de\":\"Iran\",\"es\":\"Iran\",\"fr\":\"Iran\",\"ja\":\"イラン・イスラム共和国\",\"cn\":\"伊朗\"}', '32.00000000', '53.00000000', '🇮🇷', 'U+1F1EE U+1F1F7', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q794'),
(104, 'Iraq', 'IRQ', '368', 'IQ', '964', 'Baghdad', 'IQD', 'د.ع', '.iq', 'العراق', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Baghdad\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"kr\":\"이라크\",\"br\":\"Iraque\",\"pt\":\"Iraque\",\"nl\":\"Irak\",\"hr\":\"Irak\",\"fa\":\"عراق\",\"de\":\"Irak\",\"es\":\"Irak\",\"fr\":\"Irak\",\"ja\":\"イラク\",\"it\":\"Iraq\",\"cn\":\"伊拉克\"}', '33.00000000', '44.00000000', '🇮🇶', 'U+1F1EE U+1F1F6', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q796'),
(105, 'Ireland', 'IRL', '372', 'IE', '353', 'Dublin', 'EUR', '€', '.ie', 'Éire', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Dublin\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"아일랜드\",\"br\":\"Irlanda\",\"pt\":\"Irlanda\",\"nl\":\"Ierland\",\"hr\":\"Irska\",\"fa\":\"ایرلند\",\"de\":\"Irland\",\"es\":\"Irlanda\",\"fr\":\"Irlande\",\"ja\":\"アイルランド\",\"it\":\"Irlanda\",\"cn\":\"爱尔兰\"}', '53.00000000', '-8.00000000', '🇮🇪', 'U+1F1EE U+1F1EA', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q27'),
(106, 'Israel', 'ISR', '376', 'IL', '972', 'Jerusalem', 'ILS', '₪', '.il', 'יִשְׂרָאֵל', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Jerusalem\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"IST\",\"tzName\":\"Israel Standard Time\"}]', '{\"kr\":\"이스라엘\",\"br\":\"Israel\",\"pt\":\"Israel\",\"nl\":\"Israël\",\"hr\":\"Izrael\",\"fa\":\"اسرائیل\",\"de\":\"Israel\",\"es\":\"Israel\",\"fr\":\"Israël\",\"ja\":\"イスラエル\",\"it\":\"Israele\",\"cn\":\"以色列\"}', '31.50000000', '34.75000000', '🇮🇱', 'U+1F1EE U+1F1F1', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q801'),
(107, 'Italy', 'ITA', '380', 'IT', '39', 'Rome', 'EUR', '€', '.it', 'Italia', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Rome\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"이탈리아\",\"br\":\"Itália\",\"pt\":\"Itália\",\"nl\":\"Italië\",\"hr\":\"Italija\",\"fa\":\"ایتالیا\",\"de\":\"Italien\",\"es\":\"Italia\",\"fr\":\"Italie\",\"ja\":\"イタリア\",\"it\":\"Italia\",\"cn\":\"意大利\"}', '42.83333333', '12.83333333', '🇮🇹', 'U+1F1EE U+1F1F9', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q38'),
(108, 'Jamaica', 'JAM', '388', 'JM', '1876', 'Kingston', 'JMD', 'J$', '.jm', 'Jamaica', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Jamaica\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"}]', '{\"kr\":\"자메이카\",\"br\":\"Jamaica\",\"pt\":\"Jamaica\",\"nl\":\"Jamaica\",\"hr\":\"Jamajka\",\"fa\":\"جامائیکا\",\"de\":\"Jamaika\",\"es\":\"Jamaica\",\"fr\":\"Jamaïque\",\"ja\":\"ジャマイカ\",\"it\":\"Giamaica\",\"cn\":\"牙买加\"}', '18.25000000', '-77.50000000', '🇯🇲', 'U+1F1EF U+1F1F2', '2018-07-20 20:11:03', '2021-12-04 08:14:46', 1, 'Q766'),
(109, 'Japan', 'JPN', '392', 'JP', '81', 'Tokyo', 'JPY', '¥', '.jp', '日本', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Tokyo\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"JST\",\"tzName\":\"Japan Standard Time\"}]', '{\"kr\":\"일본\",\"br\":\"Japão\",\"pt\":\"Japão\",\"nl\":\"Japan\",\"hr\":\"Japan\",\"fa\":\"ژاپن\",\"de\":\"Japan\",\"es\":\"Japón\",\"fr\":\"Japon\",\"ja\":\"日本\",\"it\":\"Giappone\",\"cn\":\"日本\"}', '36.00000000', '138.00000000', '🇯🇵', 'U+1F1EF U+1F1F5', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q17'),
(110, 'Jersey', 'JEY', '832', 'JE', '441534', 'Saint Helier', 'GBP', '£', '.je', 'Jersey', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Jersey\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"저지 섬\",\"br\":\"Jersey\",\"pt\":\"Jersey\",\"nl\":\"Jersey\",\"hr\":\"Jersey\",\"fa\":\"جرزی\",\"de\":\"Jersey\",\"es\":\"Jersey\",\"fr\":\"Jersey\",\"ja\":\"ジャージー\",\"it\":\"Isola di Jersey\",\"cn\":\"泽西岛\"}', '49.25000000', '-2.16666666', '🇯🇪', 'U+1F1EF U+1F1EA', '2018-07-20 20:11:03', '2021-12-04 08:14:40', 1, 'Q785'),
(111, 'Jordan', 'JOR', '400', 'JO', '962', 'Amman', 'JOD', 'ا.د', '.jo', 'الأردن', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Amman\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"요르단\",\"br\":\"Jordânia\",\"pt\":\"Jordânia\",\"nl\":\"Jordanië\",\"hr\":\"Jordan\",\"fa\":\"اردن\",\"de\":\"Jordanien\",\"es\":\"Jordania\",\"fr\":\"Jordanie\",\"ja\":\"ヨルダン\",\"it\":\"Giordania\",\"cn\":\"约旦\"}', '31.00000000', '36.00000000', '🇯🇴', 'U+1F1EF U+1F1F4', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q810'),
(112, 'Kazakhstan', 'KAZ', '398', 'KZ', '7', 'Astana', 'KZT', 'лв', '.kz', 'Қазақстан', 'Asia', 'Central Asia', '[{\"zoneName\":\"Asia/Almaty\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"ALMT\",\"tzName\":\"Alma-Ata Time[1\"},{\"zoneName\":\"Asia/Aqtau\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"AQTT\",\"tzName\":\"Aqtobe Time\"},{\"zoneName\":\"Asia/Aqtobe\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"AQTT\",\"tzName\":\"Aqtobe Time\"},{\"zoneName\":\"Asia/Atyrau\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"MSD+1\",\"tzName\":\"Moscow Daylight Time+1\"},{\"zoneName\":\"Asia/Oral\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"ORAT\",\"tzName\":\"Oral Time\"},{\"zoneName\":\"Asia/Qostanay\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"QYZST\",\"tzName\":\"Qyzylorda Summer Time\"},{\"zoneName\":\"Asia/Qyzylorda\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"QYZT\",\"tzName\":\"Qyzylorda Summer Time\"}]', '{\"kr\":\"카자흐스탄\",\"br\":\"Cazaquistão\",\"pt\":\"Cazaquistão\",\"nl\":\"Kazachstan\",\"hr\":\"Kazahstan\",\"fa\":\"قزاقستان\",\"de\":\"Kasachstan\",\"es\":\"Kazajistán\",\"fr\":\"Kazakhstan\",\"ja\":\"カザフスタン\",\"it\":\"Kazakistan\",\"cn\":\"哈萨克斯坦\"}', '48.00000000', '68.00000000', '🇰🇿', 'U+1F1F0 U+1F1FF', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q232'),
(113, 'Kenya', 'KEN', '404', 'KE', '254', 'Nairobi', 'KES', 'KSh', '.ke', 'Kenya', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Nairobi\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"케냐\",\"br\":\"Quênia\",\"pt\":\"Quénia\",\"nl\":\"Kenia\",\"hr\":\"Kenija\",\"fa\":\"کنیا\",\"de\":\"Kenia\",\"es\":\"Kenia\",\"fr\":\"Kenya\",\"ja\":\"ケニア\",\"it\":\"Kenya\",\"cn\":\"肯尼亚\"}', '1.00000000', '38.00000000', '🇰🇪', 'U+1F1F0 U+1F1EA', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q114'),
(114, 'Kiribati', 'KIR', '296', 'KI', '686', 'Tarawa', 'AUD', '$', '.ki', 'Kiribati', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific/Enderbury\",\"gmtOffset\":46800,\"gmtOffsetName\":\"UTC+13:00\",\"abbreviation\":\"PHOT\",\"tzName\":\"Phoenix Island Time\"},{\"zoneName\":\"Pacific/Kiritimati\",\"gmtOffset\":50400,\"gmtOffsetName\":\"UTC+14:00\",\"abbreviation\":\"LINT\",\"tzName\":\"Line Islands Time\"},{\"zoneName\":\"Pacific/Tarawa\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"GILT\",\"tzName\":\"Gilbert Island Time\"}]', '{\"kr\":\"키리바시\",\"br\":\"Kiribati\",\"pt\":\"Quiribáti\",\"nl\":\"Kiribati\",\"hr\":\"Kiribati\",\"fa\":\"کیریباتی\",\"de\":\"Kiribati\",\"es\":\"Kiribati\",\"fr\":\"Kiribati\",\"ja\":\"キリバス\",\"it\":\"Kiribati\",\"cn\":\"基里巴斯\"}', '1.41666666', '173.00000000', '🇰🇮', 'U+1F1F0 U+1F1EE', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q710'),
(115, 'North Korea', 'PRK', '408', 'KP', '850', 'Pyongyang', 'KPW', '₩', '.kp', '북한', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Pyongyang\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"KST\",\"tzName\":\"Korea Standard Time\"}]', '{\"kr\":\"조선민주주의인민공화국\",\"br\":\"Coreia do Norte\",\"pt\":\"Coreia do Norte\",\"nl\":\"Noord-Korea\",\"hr\":\"Sjeverna Koreja\",\"fa\":\"کره جنوبی\",\"de\":\"Nordkorea\",\"es\":\"Corea del Norte\",\"fr\":\"Corée du Nord\",\"ja\":\"朝鮮民主主義人民共和国\",\"it\":\"Corea del Nord\",\"cn\":\"朝鲜\"}', '40.00000000', '127.00000000', '🇰🇵', 'U+1F1F0 U+1F1F5', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q423'),
(116, 'South Korea', 'KOR', '410', 'KR', '82', 'Seoul', 'KRW', '₩', '.kr', '대한민국', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Seoul\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"KST\",\"tzName\":\"Korea Standard Time\"}]', '{\"kr\":\"대한민국\",\"br\":\"Coreia do Sul\",\"pt\":\"Coreia do Sul\",\"nl\":\"Zuid-Korea\",\"hr\":\"Južna Koreja\",\"fa\":\"کره شمالی\",\"de\":\"Südkorea\",\"es\":\"Corea del Sur\",\"fr\":\"Corée du Sud\",\"ja\":\"大韓民国\",\"it\":\"Corea del Sud\",\"cn\":\"韩国\"}', '37.00000000', '127.50000000', '🇰🇷', 'U+1F1F0 U+1F1F7', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q884'),
(117, 'Kuwait', 'KWT', '414', 'KW', '965', 'Kuwait City', 'KWD', 'ك.د', '.kw', 'الكويت', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Kuwait\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"kr\":\"쿠웨이트\",\"br\":\"Kuwait\",\"pt\":\"Kuwait\",\"nl\":\"Koeweit\",\"hr\":\"Kuvajt\",\"fa\":\"کویت\",\"de\":\"Kuwait\",\"es\":\"Kuwait\",\"fr\":\"Koweït\",\"ja\":\"クウェート\",\"it\":\"Kuwait\",\"cn\":\"科威特\"}', '29.50000000', '45.75000000', '🇰🇼', 'U+1F1F0 U+1F1FC', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q817'),
(118, 'Kyrgyzstan', 'KGZ', '417', 'KG', '996', 'Bishkek', 'KGS', 'лв', '.kg', 'Кыргызстан', 'Asia', 'Central Asia', '[{\"zoneName\":\"Asia/Bishkek\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"KGT\",\"tzName\":\"Kyrgyzstan Time\"}]', '{\"kr\":\"키르기스스탄\",\"br\":\"Quirguistão\",\"pt\":\"Quirguizistão\",\"nl\":\"Kirgizië\",\"hr\":\"Kirgistan\",\"fa\":\"قرقیزستان\",\"de\":\"Kirgisistan\",\"es\":\"Kirguizistán\",\"fr\":\"Kirghizistan\",\"ja\":\"キルギス\",\"it\":\"Kirghizistan\",\"cn\":\"吉尔吉斯斯坦\"}', '41.00000000', '75.00000000', '🇰🇬', 'U+1F1F0 U+1F1EC', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q813'),
(119, 'Laos', 'LAO', '418', 'LA', '856', 'Vientiane', 'LAK', '₭', '.la', 'ສປປລາວ', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Vientiane\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"ICT\",\"tzName\":\"Indochina Time\"}]', '{\"kr\":\"라오스\",\"br\":\"Laos\",\"pt\":\"Laos\",\"nl\":\"Laos\",\"hr\":\"Laos\",\"fa\":\"لائوس\",\"de\":\"Laos\",\"es\":\"Laos\",\"fr\":\"Laos\",\"ja\":\"ラオス人民民主共和国\",\"it\":\"Laos\",\"cn\":\"寮人民民主共和国\"}', '18.00000000', '105.00000000', '🇱🇦', 'U+1F1F1 U+1F1E6', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q819'),
(120, 'Latvia', 'LVA', '428', 'LV', '371', 'Riga', 'EUR', '€', '.lv', 'Latvija', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Riga\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"라트비아\",\"br\":\"Letônia\",\"pt\":\"Letónia\",\"nl\":\"Letland\",\"hr\":\"Latvija\",\"fa\":\"لتونی\",\"de\":\"Lettland\",\"es\":\"Letonia\",\"fr\":\"Lettonie\",\"ja\":\"ラトビア\",\"it\":\"Lettonia\",\"cn\":\"拉脱维亚\"}', '57.00000000', '25.00000000', '🇱🇻', 'U+1F1F1 U+1F1FB', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q211'),
(121, 'Lebanon', 'LBN', '422', 'LB', '961', 'Beirut', 'LBP', '£', '.lb', 'لبنان', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Beirut\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"레바논\",\"br\":\"Líbano\",\"pt\":\"Líbano\",\"nl\":\"Libanon\",\"hr\":\"Libanon\",\"fa\":\"لبنان\",\"de\":\"Libanon\",\"es\":\"Líbano\",\"fr\":\"Liban\",\"ja\":\"レバノン\",\"it\":\"Libano\",\"cn\":\"黎巴嫩\"}', '33.83333333', '35.83333333', '🇱🇧', 'U+1F1F1 U+1F1E7', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q822'),
(122, 'Lesotho', 'LSO', '426', 'LS', '266', 'Maseru', 'LSL', 'L', '.ls', 'Lesotho', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Africa/Maseru\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"SAST\",\"tzName\":\"South African Standard Time\"}]', '{\"kr\":\"레소토\",\"br\":\"Lesoto\",\"pt\":\"Lesoto\",\"nl\":\"Lesotho\",\"hr\":\"Lesoto\",\"fa\":\"لسوتو\",\"de\":\"Lesotho\",\"es\":\"Lesotho\",\"fr\":\"Lesotho\",\"ja\":\"レソト\",\"it\":\"Lesotho\",\"cn\":\"莱索托\"}', '-29.50000000', '28.50000000', '🇱🇸', 'U+1F1F1 U+1F1F8', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q1013'),
(123, 'Liberia', 'LBR', '430', 'LR', '231', 'Monrovia', 'LRD', '$', '.lr', 'Liberia', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Monrovia\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"라이베리아\",\"br\":\"Libéria\",\"pt\":\"Libéria\",\"nl\":\"Liberia\",\"hr\":\"Liberija\",\"fa\":\"لیبریا\",\"de\":\"Liberia\",\"es\":\"Liberia\",\"fr\":\"Liberia\",\"ja\":\"リベリア\",\"it\":\"Liberia\",\"cn\":\"利比里亚\"}', '6.50000000', '-9.50000000', '🇱🇷', 'U+1F1F1 U+1F1F7', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q1014'),
(124, 'Libya', 'LBY', '434', 'LY', '218', 'Tripolis', 'LYD', 'د.ل', '.ly', '‏ليبيا', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa/Tripoli\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"리비아\",\"br\":\"Líbia\",\"pt\":\"Líbia\",\"nl\":\"Libië\",\"hr\":\"Libija\",\"fa\":\"لیبی\",\"de\":\"Libyen\",\"es\":\"Libia\",\"fr\":\"Libye\",\"ja\":\"リビア\",\"it\":\"Libia\",\"cn\":\"利比亚\"}', '25.00000000', '17.00000000', '🇱🇾', 'U+1F1F1 U+1F1FE', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q1016'),
(125, 'Liechtenstein', 'LIE', '438', 'LI', '423', 'Vaduz', 'CHF', 'CHf', '.li', 'Liechtenstein', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Vaduz\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"리히텐슈타인\",\"br\":\"Liechtenstein\",\"pt\":\"Listenstaine\",\"nl\":\"Liechtenstein\",\"hr\":\"Lihtenštajn\",\"fa\":\"لیختن‌اشتاین\",\"de\":\"Liechtenstein\",\"es\":\"Liechtenstein\",\"fr\":\"Liechtenstein\",\"ja\":\"リヒテンシュタイン\",\"it\":\"Liechtenstein\",\"cn\":\"列支敦士登\"}', '47.26666666', '9.53333333', '🇱🇮', 'U+1F1F1 U+1F1EE', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q347'),
(126, 'Lithuania', 'LTU', '440', 'LT', '370', 'Vilnius', 'EUR', '€', '.lt', 'Lietuva', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Vilnius\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"리투아니아\",\"br\":\"Lituânia\",\"pt\":\"Lituânia\",\"nl\":\"Litouwen\",\"hr\":\"Litva\",\"fa\":\"لیتوانی\",\"de\":\"Litauen\",\"es\":\"Lituania\",\"fr\":\"Lituanie\",\"ja\":\"リトアニア\",\"it\":\"Lituania\",\"cn\":\"立陶宛\"}', '56.00000000', '24.00000000', '🇱🇹', 'U+1F1F1 U+1F1F9', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q37'),
(127, 'Luxembourg', 'LUX', '442', 'LU', '352', 'Luxembourg', 'EUR', '€', '.lu', 'Luxembourg', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Luxembourg\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"룩셈부르크\",\"br\":\"Luxemburgo\",\"pt\":\"Luxemburgo\",\"nl\":\"Luxemburg\",\"hr\":\"Luksemburg\",\"fa\":\"لوکزامبورگ\",\"de\":\"Luxemburg\",\"es\":\"Luxemburgo\",\"fr\":\"Luxembourg\",\"ja\":\"ルクセンブルク\",\"it\":\"Lussemburgo\",\"cn\":\"卢森堡\"}', '49.75000000', '6.16666666', '🇱🇺', 'U+1F1F1 U+1F1FA', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q32'),
(128, 'Macau S.A.R.', 'MAC', '446', 'MO', '853', 'Macao', 'MOP', '$', '.mo', '澳門', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Macau\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"CST\",\"tzName\":\"China Standard Time\"}]', '{\"kr\":\"마카오\",\"br\":\"Macau\",\"pt\":\"Macau\",\"nl\":\"Macao\",\"hr\":\"Makao\",\"fa\":\"مکائو\",\"de\":\"Macao\",\"es\":\"Macao\",\"fr\":\"Macao\",\"ja\":\"マカオ\",\"it\":\"Macao\",\"cn\":\"中国澳门\"}', '22.16666666', '113.55000000', '🇲🇴', 'U+1F1F2 U+1F1F4', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(129, 'Macedonia', 'MKD', '807', 'MK', '389', 'Skopje', 'MKD', 'ден', '.mk', 'Северна Македонија', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Skopje\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"마케도니아\",\"br\":\"Macedônia\",\"pt\":\"Macedónia\",\"nl\":\"Macedonië\",\"hr\":\"Makedonija\",\"fa\":\"\",\"de\":\"Mazedonien\",\"es\":\"Macedonia\",\"fr\":\"Macédoine\",\"ja\":\"マケドニア旧ユーゴスラビア共和国\",\"it\":\"Macedonia\",\"cn\":\"马其顿\"}', '41.83333333', '22.00000000', '🇲🇰', 'U+1F1F2 U+1F1F0', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q221'),
(130, 'Madagascar', 'MDG', '450', 'MG', '261', 'Antananarivo', 'MGA', 'Ar', '.mg', 'Madagasikara', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian/Antananarivo\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"마다가스카르\",\"br\":\"Madagascar\",\"pt\":\"Madagáscar\",\"nl\":\"Madagaskar\",\"hr\":\"Madagaskar\",\"fa\":\"ماداگاسکار\",\"de\":\"Madagaskar\",\"es\":\"Madagascar\",\"fr\":\"Madagascar\",\"ja\":\"マダガスカル\",\"it\":\"Madagascar\",\"cn\":\"马达加斯加\"}', '-20.00000000', '47.00000000', '🇲🇬', 'U+1F1F2 U+1F1EC', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q1019'),
(131, 'Malawi', 'MWI', '454', 'MW', '265', 'Lilongwe', 'MWK', 'MK', '.mw', 'Malawi', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Blantyre\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"말라위\",\"br\":\"Malawi\",\"pt\":\"Malávi\",\"nl\":\"Malawi\",\"hr\":\"Malavi\",\"fa\":\"مالاوی\",\"de\":\"Malawi\",\"es\":\"Malawi\",\"fr\":\"Malawi\",\"ja\":\"マラウイ\",\"it\":\"Malawi\",\"cn\":\"马拉维\"}', '-13.50000000', '34.00000000', '🇲🇼', 'U+1F1F2 U+1F1FC', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q1020'),
(132, 'Malaysia', 'MYS', '458', 'MY', '60', 'Kuala Lumpur', 'MYR', 'RM', '.my', 'Malaysia', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Kuala_Lumpur\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"MYT\",\"tzName\":\"Malaysia Time\"},{\"zoneName\":\"Asia/Kuching\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"MYT\",\"tzName\":\"Malaysia Time\"}]', '{\"kr\":\"말레이시아\",\"br\":\"Malásia\",\"pt\":\"Malásia\",\"nl\":\"Maleisië\",\"hr\":\"Malezija\",\"fa\":\"مالزی\",\"de\":\"Malaysia\",\"es\":\"Malasia\",\"fr\":\"Malaisie\",\"ja\":\"マレーシア\",\"it\":\"Malesia\",\"cn\":\"马来西亚\"}', '2.50000000', '112.50000000', '🇲🇾', 'U+1F1F2 U+1F1FE', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q833'),
(133, 'Maldives', 'MDV', '462', 'MV', '960', 'Male', 'MVR', 'Rf', '.mv', 'Maldives', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Indian/Maldives\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"MVT\",\"tzName\":\"Maldives Time\"}]', '{\"kr\":\"몰디브\",\"br\":\"Maldivas\",\"pt\":\"Maldivas\",\"nl\":\"Maldiven\",\"hr\":\"Maldivi\",\"fa\":\"مالدیو\",\"de\":\"Malediven\",\"es\":\"Maldivas\",\"fr\":\"Maldives\",\"ja\":\"モルディブ\",\"it\":\"Maldive\",\"cn\":\"马尔代夫\"}', '3.25000000', '73.00000000', '🇲🇻', 'U+1F1F2 U+1F1FB', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q826'),
(134, 'Mali', 'MLI', '466', 'ML', '223', 'Bamako', 'XOF', 'CFA', '.ml', 'Mali', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Bamako\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"말리\",\"br\":\"Mali\",\"pt\":\"Mali\",\"nl\":\"Mali\",\"hr\":\"Mali\",\"fa\":\"مالی\",\"de\":\"Mali\",\"es\":\"Mali\",\"fr\":\"Mali\",\"ja\":\"マリ\",\"it\":\"Mali\",\"cn\":\"马里\"}', '17.00000000', '-4.00000000', '🇲🇱', 'U+1F1F2 U+1F1F1', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q912');
INSERT INTO `countries` (`id`, `name`, `iso3`, `numeric_code`, `iso2`, `phonecode`, `capital`, `currency`, `currency_symbol`, `tld`, `native`, `region`, `subregion`, `timezones`, `translations`, `latitude`, `longitude`, `emoji`, `emojiU`, `created_at`, `updated_at`, `flag`, `wikiDataId`) VALUES
(135, 'Malta', 'MLT', '470', 'MT', '356', 'Valletta', 'EUR', '€', '.mt', 'Malta', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Malta\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"몰타\",\"br\":\"Malta\",\"pt\":\"Malta\",\"nl\":\"Malta\",\"hr\":\"Malta\",\"fa\":\"مالت\",\"de\":\"Malta\",\"es\":\"Malta\",\"fr\":\"Malte\",\"ja\":\"マルタ\",\"it\":\"Malta\",\"cn\":\"马耳他\"}', '35.83333333', '14.58333333', '🇲🇹', 'U+1F1F2 U+1F1F9', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q233'),
(136, 'Man (Isle of)', 'IMN', '833', 'IM', '441624', 'Douglas, Isle of Man', 'GBP', '£', '.im', 'Isle of Man', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Isle_of_Man\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"맨 섬\",\"br\":\"Ilha de Man\",\"pt\":\"Ilha de Man\",\"nl\":\"Isle of Man\",\"hr\":\"Otok Man\",\"fa\":\"جزیره من\",\"de\":\"Insel Man\",\"es\":\"Isla de Man\",\"fr\":\"Île de Man\",\"ja\":\"マン島\",\"it\":\"Isola di Man\",\"cn\":\"马恩岛\"}', '54.25000000', '-4.50000000', '🇮🇲', 'U+1F1EE U+1F1F2', '2018-07-20 20:11:03', '2021-12-04 08:14:27', 1, NULL),
(137, 'Marshall Islands', 'MHL', '584', 'MH', '692', 'Majuro', 'USD', '$', '.mh', 'M̧ajeļ', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific/Kwajalein\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"MHT\",\"tzName\":\"Marshall Islands Time\"},{\"zoneName\":\"Pacific/Majuro\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"MHT\",\"tzName\":\"Marshall Islands Time\"}]', '{\"kr\":\"마셜 제도\",\"br\":\"Ilhas Marshall\",\"pt\":\"Ilhas Marshall\",\"nl\":\"Marshalleilanden\",\"hr\":\"Maršalovi Otoci\",\"fa\":\"جزایر مارشال\",\"de\":\"Marshallinseln\",\"es\":\"Islas Marshall\",\"fr\":\"Îles Marshall\",\"ja\":\"マーシャル諸島\",\"it\":\"Isole Marshall\",\"cn\":\"马绍尔群岛\"}', '9.00000000', '168.00000000', '🇲🇭', 'U+1F1F2 U+1F1ED', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q709'),
(138, 'Martinique', 'MTQ', '474', 'MQ', '596', 'Fort-de-France', 'EUR', '€', '.mq', 'Martinique', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Martinique\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"마르티니크\",\"br\":\"Martinica\",\"pt\":\"Martinica\",\"nl\":\"Martinique\",\"hr\":\"Martinique\",\"fa\":\"مونتسرات\",\"de\":\"Martinique\",\"es\":\"Martinica\",\"fr\":\"Martinique\",\"ja\":\"マルティニーク\",\"it\":\"Martinica\",\"cn\":\"马提尼克岛\"}', '14.66666700', '-61.00000000', '🇲🇶', 'U+1F1F2 U+1F1F6', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(139, 'Mauritania', 'MRT', '478', 'MR', '222', 'Nouakchott', 'MRO', 'MRU', '.mr', 'موريتانيا', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Nouakchott\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"모리타니\",\"br\":\"Mauritânia\",\"pt\":\"Mauritânia\",\"nl\":\"Mauritanië\",\"hr\":\"Mauritanija\",\"fa\":\"موریتانی\",\"de\":\"Mauretanien\",\"es\":\"Mauritania\",\"fr\":\"Mauritanie\",\"ja\":\"モーリタニア\",\"it\":\"Mauritania\",\"cn\":\"毛里塔尼亚\"}', '20.00000000', '-12.00000000', '🇲🇷', 'U+1F1F2 U+1F1F7', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q1025'),
(140, 'Mauritius', 'MUS', '480', 'MU', '230', 'Port Louis', 'MUR', '₨', '.mu', 'Maurice', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian/Mauritius\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"MUT\",\"tzName\":\"Mauritius Time\"}]', '{\"kr\":\"모리셔스\",\"br\":\"Maurício\",\"pt\":\"Maurícia\",\"nl\":\"Mauritius\",\"hr\":\"Mauricijus\",\"fa\":\"موریس\",\"de\":\"Mauritius\",\"es\":\"Mauricio\",\"fr\":\"Île Maurice\",\"ja\":\"モーリシャス\",\"it\":\"Mauritius\",\"cn\":\"毛里求斯\"}', '-20.28333333', '57.55000000', '🇲🇺', 'U+1F1F2 U+1F1FA', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q1027'),
(141, 'Mayotte', 'MYT', '175', 'YT', '262', 'Mamoudzou', 'EUR', '€', '.yt', 'Mayotte', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian/Mayotte\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"마요트\",\"br\":\"Mayotte\",\"pt\":\"Mayotte\",\"nl\":\"Mayotte\",\"hr\":\"Mayotte\",\"fa\":\"مایوت\",\"de\":\"Mayotte\",\"es\":\"Mayotte\",\"fr\":\"Mayotte\",\"ja\":\"マヨット\",\"it\":\"Mayotte\",\"cn\":\"马约特\"}', '-12.83333333', '45.16666666', '🇾🇹', 'U+1F1FE U+1F1F9', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(142, 'Mexico', 'MEX', '484', 'MX', '52', 'Mexico City', 'MXN', '$', '.mx', 'México', 'Americas', 'Central America', '[{\"zoneName\":\"America/Bahia_Banderas\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Cancun\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Chihuahua\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Hermosillo\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Matamoros\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Mazatlan\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Merida\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Mexico_City\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Monterrey\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Ojinaga\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Tijuana\",\"gmtOffset\":-28800,\"gmtOffsetName\":\"UTC-08:00\",\"abbreviation\":\"PST\",\"tzName\":\"Pacific Standard Time (North America\"}]', '{\"kr\":\"멕시코\",\"br\":\"México\",\"pt\":\"México\",\"nl\":\"Mexico\",\"hr\":\"Meksiko\",\"fa\":\"مکزیک\",\"de\":\"Mexiko\",\"es\":\"México\",\"fr\":\"Mexique\",\"ja\":\"メキシコ\",\"it\":\"Messico\",\"cn\":\"墨西哥\"}', '23.00000000', '-102.00000000', '🇲🇽', 'U+1F1F2 U+1F1FD', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q96'),
(143, 'Micronesia', 'FSM', '583', 'FM', '691', 'Palikir', 'USD', '$', '.fm', 'Micronesia', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific/Chuuk\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"CHUT\",\"tzName\":\"Chuuk Time\"},{\"zoneName\":\"Pacific/Kosrae\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"KOST\",\"tzName\":\"Kosrae Time\"},{\"zoneName\":\"Pacific/Pohnpei\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"PONT\",\"tzName\":\"Pohnpei Standard Time\"}]', '{\"kr\":\"미크로네시아 연방\",\"br\":\"Micronésia\",\"pt\":\"Micronésia\",\"nl\":\"Micronesië\",\"hr\":\"Mikronezija\",\"fa\":\"ایالات فدرال میکرونزی\",\"de\":\"Mikronesien\",\"es\":\"Micronesia\",\"fr\":\"Micronésie\",\"ja\":\"ミクロネシア連邦\",\"it\":\"Micronesia\",\"cn\":\"密克罗尼西亚\"}', '6.91666666', '158.25000000', '🇫🇲', 'U+1F1EB U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q702'),
(144, 'Moldova', 'MDA', '498', 'MD', '373', 'Chisinau', 'MDL', 'L', '.md', 'Moldova', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Chisinau\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"몰도바\",\"br\":\"Moldávia\",\"pt\":\"Moldávia\",\"nl\":\"Moldavië\",\"hr\":\"Moldova\",\"fa\":\"مولداوی\",\"de\":\"Moldawie\",\"es\":\"Moldavia\",\"fr\":\"Moldavie\",\"ja\":\"モルドバ共和国\",\"it\":\"Moldavia\",\"cn\":\"摩尔多瓦\"}', '47.00000000', '29.00000000', '🇲🇩', 'U+1F1F2 U+1F1E9', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q217'),
(145, 'Monaco', 'MCO', '492', 'MC', '377', 'Monaco', 'EUR', '€', '.mc', 'Monaco', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Monaco\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"모나코\",\"br\":\"Mônaco\",\"pt\":\"Mónaco\",\"nl\":\"Monaco\",\"hr\":\"Monako\",\"fa\":\"موناکو\",\"de\":\"Monaco\",\"es\":\"Mónaco\",\"fr\":\"Monaco\",\"ja\":\"モナコ\",\"it\":\"Principato di Monaco\",\"cn\":\"摩纳哥\"}', '43.73333333', '7.40000000', '🇲🇨', 'U+1F1F2 U+1F1E8', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q235'),
(146, 'Mongolia', 'MNG', '496', 'MN', '976', 'Ulan Bator', 'MNT', '₮', '.mn', 'Монгол улс', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Choibalsan\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"CHOT\",\"tzName\":\"Choibalsan Standard Time\"},{\"zoneName\":\"Asia/Hovd\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"HOVT\",\"tzName\":\"Hovd Time\"},{\"zoneName\":\"Asia/Ulaanbaatar\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"ULAT\",\"tzName\":\"Ulaanbaatar Standard Time\"}]', '{\"kr\":\"몽골\",\"br\":\"Mongólia\",\"pt\":\"Mongólia\",\"nl\":\"Mongolië\",\"hr\":\"Mongolija\",\"fa\":\"مغولستان\",\"de\":\"Mongolei\",\"es\":\"Mongolia\",\"fr\":\"Mongolie\",\"ja\":\"モンゴル\",\"it\":\"Mongolia\",\"cn\":\"蒙古\"}', '46.00000000', '105.00000000', '🇲🇳', 'U+1F1F2 U+1F1F3', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q711'),
(147, 'Montenegro', 'MNE', '499', 'ME', '382', 'Podgorica', 'EUR', '€', '.me', 'Црна Гора', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Podgorica\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"몬테네그로\",\"br\":\"Montenegro\",\"pt\":\"Montenegro\",\"nl\":\"Montenegro\",\"hr\":\"Crna Gora\",\"fa\":\"مونته‌نگرو\",\"de\":\"Montenegro\",\"es\":\"Montenegro\",\"fr\":\"Monténégro\",\"ja\":\"モンテネグロ\",\"it\":\"Montenegro\",\"cn\":\"黑山\"}', '42.50000000', '19.30000000', '🇲🇪', 'U+1F1F2 U+1F1EA', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q236'),
(148, 'Montserrat', 'MSR', '500', 'MS', '1664', 'Plymouth', 'XCD', '$', '.ms', 'Montserrat', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Montserrat\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"몬트세랫\",\"br\":\"Montserrat\",\"pt\":\"Monserrate\",\"nl\":\"Montserrat\",\"hr\":\"Montserrat\",\"fa\":\"مایوت\",\"de\":\"Montserrat\",\"es\":\"Montserrat\",\"fr\":\"Montserrat\",\"ja\":\"モントセラト\",\"it\":\"Montserrat\",\"cn\":\"蒙特塞拉特\"}', '16.75000000', '-62.20000000', '🇲🇸', 'U+1F1F2 U+1F1F8', '2018-07-20 20:11:03', '2021-12-04 08:14:15', 1, NULL),
(149, 'Morocco', 'MAR', '504', 'MA', '212', 'Rabat', 'MAD', 'DH', '.ma', 'المغرب', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa/Casablanca\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WEST\",\"tzName\":\"Western European Summer Time\"}]', '{\"kr\":\"모로코\",\"br\":\"Marrocos\",\"pt\":\"Marrocos\",\"nl\":\"Marokko\",\"hr\":\"Maroko\",\"fa\":\"مراکش\",\"de\":\"Marokko\",\"es\":\"Marruecos\",\"fr\":\"Maroc\",\"ja\":\"モロッコ\",\"it\":\"Marocco\",\"cn\":\"摩洛哥\"}', '32.00000000', '-5.00000000', '🇲🇦', 'U+1F1F2 U+1F1E6', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q1028'),
(150, 'Mozambique', 'MOZ', '508', 'MZ', '258', 'Maputo', 'MZN', 'MT', '.mz', 'Moçambique', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Maputo\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"모잠비크\",\"br\":\"Moçambique\",\"pt\":\"Moçambique\",\"nl\":\"Mozambique\",\"hr\":\"Mozambik\",\"fa\":\"موزامبیک\",\"de\":\"Mosambik\",\"es\":\"Mozambique\",\"fr\":\"Mozambique\",\"ja\":\"モザンビーク\",\"it\":\"Mozambico\",\"cn\":\"莫桑比克\"}', '-18.25000000', '35.00000000', '🇲🇿', 'U+1F1F2 U+1F1FF', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q1029'),
(151, 'Myanmar', 'MMR', '104', 'MM', '95', 'Nay Pyi Taw', 'MMK', 'K', '.mm', 'မြန်မာ', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Yangon\",\"gmtOffset\":23400,\"gmtOffsetName\":\"UTC+06:30\",\"abbreviation\":\"MMT\",\"tzName\":\"Myanmar Standard Time\"}]', '{\"kr\":\"미얀마\",\"br\":\"Myanmar\",\"pt\":\"Myanmar\",\"nl\":\"Myanmar\",\"hr\":\"Mijanmar\",\"fa\":\"میانمار\",\"de\":\"Myanmar\",\"es\":\"Myanmar\",\"fr\":\"Myanmar\",\"ja\":\"ミャンマー\",\"it\":\"Birmania\",\"cn\":\"缅甸\"}', '22.00000000', '98.00000000', '🇲🇲', 'U+1F1F2 U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q836'),
(152, 'Namibia', 'NAM', '516', 'NA', '264', 'Windhoek', 'NAD', '$', '.na', 'Namibia', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Africa/Windhoek\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"WAST\",\"tzName\":\"West Africa Summer Time\"}]', '{\"kr\":\"나미비아\",\"br\":\"Namíbia\",\"pt\":\"Namíbia\",\"nl\":\"Namibië\",\"hr\":\"Namibija\",\"fa\":\"نامیبیا\",\"de\":\"Namibia\",\"es\":\"Namibia\",\"fr\":\"Namibie\",\"ja\":\"ナミビア\",\"it\":\"Namibia\",\"cn\":\"纳米比亚\"}', '-22.00000000', '17.00000000', '🇳🇦', 'U+1F1F3 U+1F1E6', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q1030'),
(153, 'Nauru', 'NRU', '520', 'NR', '674', 'Yaren', 'AUD', '$', '.nr', 'Nauru', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific/Nauru\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"NRT\",\"tzName\":\"Nauru Time\"}]', '{\"kr\":\"나우루\",\"br\":\"Nauru\",\"pt\":\"Nauru\",\"nl\":\"Nauru\",\"hr\":\"Nauru\",\"fa\":\"نائورو\",\"de\":\"Nauru\",\"es\":\"Nauru\",\"fr\":\"Nauru\",\"ja\":\"ナウル\",\"it\":\"Nauru\",\"cn\":\"瑙鲁\"}', '-0.53333333', '166.91666666', '🇳🇷', 'U+1F1F3 U+1F1F7', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q697'),
(154, 'Nepal', 'NPL', '524', 'NP', '977', 'Kathmandu', 'NPR', '₨', '.np', 'नपल', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Kathmandu\",\"gmtOffset\":20700,\"gmtOffsetName\":\"UTC+05:45\",\"abbreviation\":\"NPT\",\"tzName\":\"Nepal Time\"}]', '{\"kr\":\"네팔\",\"br\":\"Nepal\",\"pt\":\"Nepal\",\"nl\":\"Nepal\",\"hr\":\"Nepal\",\"fa\":\"نپال\",\"de\":\"Népal\",\"es\":\"Nepal\",\"fr\":\"Népal\",\"ja\":\"ネパール\",\"it\":\"Nepal\",\"cn\":\"尼泊尔\"}', '28.00000000', '84.00000000', '🇳🇵', 'U+1F1F3 U+1F1F5', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q837'),
(155, 'Bonaire, Sint Eustatius and Saba', 'BES', '535', 'BQ', '599', 'Kralendijk', 'USD', '$', '.an', 'Caribisch Nederland', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Anguilla\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"보네르 섬\",\"br\":\"Bonaire\",\"pt\":\"Bonaire\",\"fa\":\"بونیر\",\"de\":\"Bonaire, Sint Eustatius und Saba\",\"fr\":\"Bonaire, Saint-Eustache et Saba\",\"it\":\"Bonaire, Saint-Eustache e Saba\",\"cn\":\"博内尔岛、圣尤斯特歇斯和萨巴岛\"}', '12.15000000', '-68.26666700', '🇧🇶', 'U+1F1E7 U+1F1F6', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q27561'),
(156, 'Netherlands', 'NLD', '528', 'NL', '31', 'Amsterdam', 'EUR', '€', '.nl', 'Nederland', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Amsterdam\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"네덜란드 \",\"br\":\"Holanda\",\"pt\":\"Países Baixos\",\"nl\":\"Nederland\",\"hr\":\"Nizozemska\",\"fa\":\"پادشاهی هلند\",\"de\":\"Niederlande\",\"es\":\"Países Bajos\",\"fr\":\"Pays-Bas\",\"ja\":\"オランダ\",\"it\":\"Paesi Bassi\",\"cn\":\"荷兰\"}', '52.50000000', '5.75000000', '🇳🇱', 'U+1F1F3 U+1F1F1', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q55'),
(157, 'New Caledonia', 'NCL', '540', 'NC', '687', 'Noumea', 'XPF', '₣', '.nc', 'Nouvelle-Calédonie', 'Oceania', 'Melanesia', '[{\"zoneName\":\"Pacific/Noumea\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"NCT\",\"tzName\":\"New Caledonia Time\"}]', '{\"kr\":\"누벨칼레도니\",\"br\":\"Nova Caledônia\",\"pt\":\"Nova Caledónia\",\"nl\":\"Nieuw-Caledonië\",\"hr\":\"Nova Kaledonija\",\"fa\":\"کالدونیای جدید\",\"de\":\"Neukaledonien\",\"es\":\"Nueva Caledonia\",\"fr\":\"Nouvelle-Calédonie\",\"ja\":\"ニューカレドニア\",\"it\":\"Nuova Caledonia\",\"cn\":\"新喀里多尼亚\"}', '-21.50000000', '165.50000000', '🇳🇨', 'U+1F1F3 U+1F1E8', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(158, 'New Zealand', 'NZL', '554', 'NZ', '64', 'Wellington', 'NZD', '$', '.nz', 'New Zealand', 'Oceania', 'Australia and New Zealand', '[{\"zoneName\":\"Pacific/Auckland\",\"gmtOffset\":46800,\"gmtOffsetName\":\"UTC+13:00\",\"abbreviation\":\"NZDT\",\"tzName\":\"New Zealand Daylight Time\"},{\"zoneName\":\"Pacific/Chatham\",\"gmtOffset\":49500,\"gmtOffsetName\":\"UTC+13:45\",\"abbreviation\":\"CHAST\",\"tzName\":\"Chatham Standard Time\"}]', '{\"kr\":\"뉴질랜드\",\"br\":\"Nova Zelândia\",\"pt\":\"Nova Zelândia\",\"nl\":\"Nieuw-Zeeland\",\"hr\":\"Novi Zeland\",\"fa\":\"نیوزیلند\",\"de\":\"Neuseeland\",\"es\":\"Nueva Zelanda\",\"fr\":\"Nouvelle-Zélande\",\"ja\":\"ニュージーランド\",\"it\":\"Nuova Zelanda\",\"cn\":\"新西兰\"}', '-41.00000000', '174.00000000', '🇳🇿', 'U+1F1F3 U+1F1FF', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q664'),
(159, 'Nicaragua', 'NIC', '558', 'NI', '505', 'Managua', 'NIO', 'C$', '.ni', 'Nicaragua', 'Americas', 'Central America', '[{\"zoneName\":\"America/Managua\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"}]', '{\"kr\":\"니카라과\",\"br\":\"Nicarágua\",\"pt\":\"Nicarágua\",\"nl\":\"Nicaragua\",\"hr\":\"Nikaragva\",\"fa\":\"نیکاراگوئه\",\"de\":\"Nicaragua\",\"es\":\"Nicaragua\",\"fr\":\"Nicaragua\",\"ja\":\"ニカラグア\",\"it\":\"Nicaragua\",\"cn\":\"尼加拉瓜\"}', '13.00000000', '-85.00000000', '🇳🇮', 'U+1F1F3 U+1F1EE', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q811'),
(160, 'Niger', 'NER', '562', 'NE', '227', 'Niamey', 'XOF', 'CFA', '.ne', 'Niger', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Niamey\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"니제르\",\"br\":\"Níger\",\"pt\":\"Níger\",\"nl\":\"Niger\",\"hr\":\"Niger\",\"fa\":\"نیجر\",\"de\":\"Niger\",\"es\":\"Níger\",\"fr\":\"Niger\",\"ja\":\"ニジェール\",\"it\":\"Niger\",\"cn\":\"尼日尔\"}', '16.00000000', '8.00000000', '🇳🇪', 'U+1F1F3 U+1F1EA', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q1032'),
(161, 'Nigeria', 'NGA', '566', 'NG', '234', 'Abuja', 'NGN', '₦', '.ng', 'Nigeria', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Lagos\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WAT\",\"tzName\":\"West Africa Time\"}]', '{\"kr\":\"나이지리아\",\"br\":\"Nigéria\",\"pt\":\"Nigéria\",\"nl\":\"Nigeria\",\"hr\":\"Nigerija\",\"fa\":\"نیجریه\",\"de\":\"Nigeria\",\"es\":\"Nigeria\",\"fr\":\"Nigéria\",\"ja\":\"ナイジェリア\",\"it\":\"Nigeria\",\"cn\":\"尼日利亚\"}', '10.00000000', '8.00000000', '🇳🇬', 'U+1F1F3 U+1F1EC', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q1033'),
(162, 'Niue', 'NIU', '570', 'NU', '683', 'Alofi', 'NZD', '$', '.nu', 'Niuē', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Niue\",\"gmtOffset\":-39600,\"gmtOffsetName\":\"UTC-11:00\",\"abbreviation\":\"NUT\",\"tzName\":\"Niue Time\"}]', '{\"kr\":\"니우에\",\"br\":\"Niue\",\"pt\":\"Niue\",\"nl\":\"Niue\",\"hr\":\"Niue\",\"fa\":\"نیووی\",\"de\":\"Niue\",\"es\":\"Niue\",\"fr\":\"Niue\",\"ja\":\"ニウエ\",\"it\":\"Niue\",\"cn\":\"纽埃\"}', '-19.03333333', '-169.86666666', '🇳🇺', 'U+1F1F3 U+1F1FA', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q34020'),
(163, 'Norfolk Island', 'NFK', '574', 'NF', '672', 'Kingston', 'AUD', '$', '.nf', 'Norfolk Island', 'Oceania', 'Australia and New Zealand', '[{\"zoneName\":\"Pacific/Norfolk\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"NFT\",\"tzName\":\"Norfolk Time\"}]', '{\"kr\":\"노퍽 섬\",\"br\":\"Ilha Norfolk\",\"pt\":\"Ilha Norfolk\",\"nl\":\"Norfolkeiland\",\"hr\":\"Otok Norfolk\",\"fa\":\"جزیره نورفک\",\"de\":\"Norfolkinsel\",\"es\":\"Isla de Norfolk\",\"fr\":\"Île de Norfolk\",\"ja\":\"ノーフォーク島\",\"it\":\"Isola Norfolk\",\"cn\":\"诺福克岛\"}', '-29.03333333', '167.95000000', '🇳🇫', 'U+1F1F3 U+1F1EB', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(164, 'Northern Mariana Islands', 'MNP', '580', 'MP', '1670', 'Saipan', 'USD', '$', '.mp', 'Northern Mariana Islands', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific/Saipan\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"ChST\",\"tzName\":\"Chamorro Standard Time\"}]', '{\"kr\":\"북마리아나 제도\",\"br\":\"Ilhas Marianas\",\"pt\":\"Ilhas Marianas\",\"nl\":\"Noordelijke Marianeneilanden\",\"hr\":\"Sjevernomarijanski otoci\",\"fa\":\"جزایر ماریانای شمالی\",\"de\":\"Nördliche Marianen\",\"es\":\"Islas Marianas del Norte\",\"fr\":\"Îles Mariannes du Nord\",\"ja\":\"北マリアナ諸島\",\"it\":\"Isole Marianne Settentrionali\",\"cn\":\"北马里亚纳群岛\"}', '15.20000000', '145.75000000', '🇲🇵', 'U+1F1F2 U+1F1F5', '2018-07-20 20:11:03', '2021-12-04 08:14:06', 1, NULL),
(165, 'Norway', 'NOR', '578', 'NO', '47', 'Oslo', 'NOK', 'kr', '.no', 'Norge', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Oslo\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"노르웨이\",\"br\":\"Noruega\",\"pt\":\"Noruega\",\"nl\":\"Noorwegen\",\"hr\":\"Norveška\",\"fa\":\"نروژ\",\"de\":\"Norwegen\",\"es\":\"Noruega\",\"fr\":\"Norvège\",\"ja\":\"ノルウェー\",\"it\":\"Norvegia\",\"cn\":\"挪威\"}', '62.00000000', '10.00000000', '🇳🇴', 'U+1F1F3 U+1F1F4', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q20'),
(166, 'Oman', 'OMN', '512', 'OM', '968', 'Muscat', 'OMR', '.ع.ر', '.om', 'عمان', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Muscat\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"GST\",\"tzName\":\"Gulf Standard Time\"}]', '{\"kr\":\"오만\",\"br\":\"Omã\",\"pt\":\"Omã\",\"nl\":\"Oman\",\"hr\":\"Oman\",\"fa\":\"عمان\",\"de\":\"Oman\",\"es\":\"Omán\",\"fr\":\"Oman\",\"ja\":\"オマーン\",\"it\":\"oman\",\"cn\":\"阿曼\"}', '21.00000000', '57.00000000', '🇴🇲', 'U+1F1F4 U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q842'),
(167, 'Pakistan', 'PAK', '586', 'PK', '92', 'Islamabad', 'PKR', '₨', '.pk', 'Pakistan', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Karachi\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"PKT\",\"tzName\":\"Pakistan Standard Time\"}]', '{\"kr\":\"파키스탄\",\"br\":\"Paquistão\",\"pt\":\"Paquistão\",\"nl\":\"Pakistan\",\"hr\":\"Pakistan\",\"fa\":\"پاکستان\",\"de\":\"Pakistan\",\"es\":\"Pakistán\",\"fr\":\"Pakistan\",\"ja\":\"パキスタン\",\"it\":\"Pakistan\",\"cn\":\"巴基斯坦\"}', '30.00000000', '70.00000000', '🇵🇰', 'U+1F1F5 U+1F1F0', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q843'),
(168, 'Palau', 'PLW', '585', 'PW', '680', 'Melekeok', 'USD', '$', '.pw', 'Palau', 'Oceania', 'Micronesia', '[{\"zoneName\":\"Pacific/Palau\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"PWT\",\"tzName\":\"Palau Time\"}]', '{\"kr\":\"팔라우\",\"br\":\"Palau\",\"pt\":\"Palau\",\"nl\":\"Palau\",\"hr\":\"Palau\",\"fa\":\"پالائو\",\"de\":\"Palau\",\"es\":\"Palau\",\"fr\":\"Palaos\",\"ja\":\"パラオ\",\"it\":\"Palau\",\"cn\":\"帕劳\"}', '7.50000000', '134.50000000', '🇵🇼', 'U+1F1F5 U+1F1FC', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q695'),
(169, 'Palestinian Territory Occupied', 'PSE', '275', 'PS', '970', 'East Jerusalem', 'ILS', '₪', '.ps', 'فلسطين', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Gaza\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"},{\"zoneName\":\"Asia/Hebron\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"팔레스타인 영토\",\"br\":\"Palestina\",\"pt\":\"Palestina\",\"nl\":\"Palestijnse gebieden\",\"hr\":\"Palestina\",\"fa\":\"فلسطین\",\"de\":\"Palästina\",\"es\":\"Palestina\",\"fr\":\"Palestine\",\"ja\":\"パレスチナ\",\"it\":\"Palestina\",\"cn\":\"巴勒斯坦\"}', '31.90000000', '35.20000000', '🇵🇸', 'U+1F1F5 U+1F1F8', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(170, 'Panama', 'PAN', '591', 'PA', '507', 'Panama City', 'PAB', 'B/.', '.pa', 'Panamá', 'Americas', 'Central America', '[{\"zoneName\":\"America/Panama\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"}]', '{\"kr\":\"파나마\",\"br\":\"Panamá\",\"pt\":\"Panamá\",\"nl\":\"Panama\",\"hr\":\"Panama\",\"fa\":\"پاناما\",\"de\":\"Panama\",\"es\":\"Panamá\",\"fr\":\"Panama\",\"ja\":\"パナマ\",\"it\":\"Panama\",\"cn\":\"巴拿马\"}', '9.00000000', '-80.00000000', '🇵🇦', 'U+1F1F5 U+1F1E6', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q804'),
(171, 'Papua new Guinea', 'PNG', '598', 'PG', '675', 'Port Moresby', 'PGK', 'K', '.pg', 'Papua Niugini', 'Oceania', 'Melanesia', '[{\"zoneName\":\"Pacific/Bougainville\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"BST\",\"tzName\":\"Bougainville Standard Time[6\"},{\"zoneName\":\"Pacific/Port_Moresby\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"PGT\",\"tzName\":\"Papua New Guinea Time\"}]', '{\"kr\":\"파푸아뉴기니\",\"br\":\"Papua Nova Guiné\",\"pt\":\"Papua Nova Guiné\",\"nl\":\"Papoea-Nieuw-Guinea\",\"hr\":\"Papua Nova Gvineja\",\"fa\":\"پاپوآ گینه نو\",\"de\":\"Papua-Neuguinea\",\"es\":\"Papúa Nueva Guinea\",\"fr\":\"Papouasie-Nouvelle-Guinée\",\"ja\":\"パプアニューギニア\",\"it\":\"Papua Nuova Guinea\",\"cn\":\"巴布亚新几内亚\"}', '-6.00000000', '147.00000000', '🇵🇬', 'U+1F1F5 U+1F1EC', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q691'),
(172, 'Paraguay', 'PRY', '600', 'PY', '595', 'Asuncion', 'PYG', '₲', '.py', 'Paraguay', 'Americas', 'South America', '[{\"zoneName\":\"America/Asuncion\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"PYST\",\"tzName\":\"Paraguay Summer Time\"}]', '{\"kr\":\"파라과이\",\"br\":\"Paraguai\",\"pt\":\"Paraguai\",\"nl\":\"Paraguay\",\"hr\":\"Paragvaj\",\"fa\":\"پاراگوئه\",\"de\":\"Paraguay\",\"es\":\"Paraguay\",\"fr\":\"Paraguay\",\"ja\":\"パラグアイ\",\"it\":\"Paraguay\",\"cn\":\"巴拉圭\"}', '-23.00000000', '-58.00000000', '🇵🇾', 'U+1F1F5 U+1F1FE', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q733'),
(173, 'Peru', 'PER', '604', 'PE', '51', 'Lima', 'PEN', 'S/.', '.pe', 'Perú', 'Americas', 'South America', '[{\"zoneName\":\"America/Lima\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"PET\",\"tzName\":\"Peru Time\"}]', '{\"kr\":\"페루\",\"br\":\"Peru\",\"pt\":\"Peru\",\"nl\":\"Peru\",\"hr\":\"Peru\",\"fa\":\"پرو\",\"de\":\"Peru\",\"es\":\"Perú\",\"fr\":\"Pérou\",\"ja\":\"ペルー\",\"it\":\"Perù\",\"cn\":\"秘鲁\"}', '-10.00000000', '-76.00000000', '🇵🇪', 'U+1F1F5 U+1F1EA', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q419'),
(174, 'Philippines', 'PHL', '608', 'PH', '63', 'Manila', 'PHP', '₱', '.ph', 'Pilipinas', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Manila\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"PHT\",\"tzName\":\"Philippine Time\"}]', '{\"kr\":\"필리핀\",\"br\":\"Filipinas\",\"pt\":\"Filipinas\",\"nl\":\"Filipijnen\",\"hr\":\"Filipini\",\"fa\":\"جزایر الندفیلیپین\",\"de\":\"Philippinen\",\"es\":\"Filipinas\",\"fr\":\"Philippines\",\"ja\":\"フィリピン\",\"it\":\"Filippine\",\"cn\":\"菲律宾\"}', '13.00000000', '122.00000000', '🇵🇭', 'U+1F1F5 U+1F1ED', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q928'),
(175, 'Pitcairn Island', 'PCN', '612', 'PN', '870', 'Adamstown', 'NZD', '$', '.pn', 'Pitcairn Islands', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Pitcairn\",\"gmtOffset\":-28800,\"gmtOffsetName\":\"UTC-08:00\",\"abbreviation\":\"PST\",\"tzName\":\"Pacific Standard Time (North America\"}]', '{\"kr\":\"핏케언 제도\",\"br\":\"Ilhas Pitcairn\",\"pt\":\"Ilhas Picárnia\",\"nl\":\"Pitcairneilanden\",\"hr\":\"Pitcairnovo otočje\",\"fa\":\"پیتکرن\",\"de\":\"Pitcairn\",\"es\":\"Islas Pitcairn\",\"fr\":\"Îles Pitcairn\",\"ja\":\"ピトケアン\",\"it\":\"Isole Pitcairn\",\"cn\":\"皮特凯恩群岛\"}', '-25.06666666', '-130.10000000', '🇵🇳', 'U+1F1F5 U+1F1F3', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(176, 'Poland', 'POL', '616', 'PL', '48', 'Warsaw', 'PLN', 'zł', '.pl', 'Polska', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Warsaw\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"폴란드\",\"br\":\"Polônia\",\"pt\":\"Polónia\",\"nl\":\"Polen\",\"hr\":\"Poljska\",\"fa\":\"لهستان\",\"de\":\"Polen\",\"es\":\"Polonia\",\"fr\":\"Pologne\",\"ja\":\"ポーランド\",\"it\":\"Polonia\",\"cn\":\"波兰\"}', '52.00000000', '20.00000000', '🇵🇱', 'U+1F1F5 U+1F1F1', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q36'),
(177, 'Portugal', 'PRT', '620', 'PT', '351', 'Lisbon', 'EUR', '€', '.pt', 'Portugal', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Atlantic/Azores\",\"gmtOffset\":-3600,\"gmtOffsetName\":\"UTC-01:00\",\"abbreviation\":\"AZOT\",\"tzName\":\"Azores Standard Time\"},{\"zoneName\":\"Atlantic/Madeira\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"WET\",\"tzName\":\"Western European Time\"},{\"zoneName\":\"Europe/Lisbon\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"WET\",\"tzName\":\"Western European Time\"}]', '{\"kr\":\"포르투갈\",\"br\":\"Portugal\",\"pt\":\"Portugal\",\"nl\":\"Portugal\",\"hr\":\"Portugal\",\"fa\":\"پرتغال\",\"de\":\"Portugal\",\"es\":\"Portugal\",\"fr\":\"Portugal\",\"ja\":\"ポルトガル\",\"it\":\"Portogallo\",\"cn\":\"葡萄牙\"}', '39.50000000', '-8.00000000', '🇵🇹', 'U+1F1F5 U+1F1F9', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q45'),
(178, 'Puerto Rico', 'PRI', '630', 'PR', '1787', 'San Juan', 'USD', '$', '.pr', 'Puerto Rico', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Puerto_Rico\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"푸에르토리코\",\"br\":\"Porto Rico\",\"pt\":\"Porto Rico\",\"nl\":\"Puerto Rico\",\"hr\":\"Portoriko\",\"fa\":\"پورتو ریکو\",\"de\":\"Puerto Rico\",\"es\":\"Puerto Rico\",\"fr\":\"Porto Rico\",\"ja\":\"プエルトリコ\",\"it\":\"Porto Rico\",\"cn\":\"波多黎各\"}', '18.25000000', '-66.50000000', '🇵🇷', 'U+1F1F5 U+1F1F7', '2018-07-20 20:11:03', '2021-12-04 08:13:52', 1, NULL),
(179, 'Qatar', 'QAT', '634', 'QA', '974', 'Doha', 'QAR', 'ق.ر', '.qa', 'قطر', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Qatar\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"kr\":\"카타르\",\"br\":\"Catar\",\"pt\":\"Catar\",\"nl\":\"Qatar\",\"hr\":\"Katar\",\"fa\":\"قطر\",\"de\":\"Katar\",\"es\":\"Catar\",\"fr\":\"Qatar\",\"ja\":\"カタール\",\"it\":\"Qatar\",\"cn\":\"卡塔尔\"}', '25.50000000', '51.25000000', '🇶🇦', 'U+1F1F6 U+1F1E6', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q846'),
(180, 'Reunion', 'REU', '638', 'RE', '262', 'Saint-Denis', 'EUR', '€', '.re', 'La Réunion', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian/Reunion\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"RET\",\"tzName\":\"Réunion Time\"}]', '{\"kr\":\"레위니옹\",\"br\":\"Reunião\",\"pt\":\"Reunião\",\"nl\":\"Réunion\",\"hr\":\"Réunion\",\"fa\":\"رئونیون\",\"de\":\"Réunion\",\"es\":\"Reunión\",\"fr\":\"Réunion\",\"ja\":\"レユニオン\",\"it\":\"Riunione\",\"cn\":\"留尼汪岛\"}', '-21.15000000', '55.50000000', '🇷🇪', 'U+1F1F7 U+1F1EA', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(181, 'Romania', 'ROU', '642', 'RO', '40', 'Bucharest', 'RON', 'lei', '.ro', 'România', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Bucharest\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"루마니아\",\"br\":\"Romênia\",\"pt\":\"Roménia\",\"nl\":\"Roemenië\",\"hr\":\"Rumunjska\",\"fa\":\"رومانی\",\"de\":\"Rumänien\",\"es\":\"Rumania\",\"fr\":\"Roumanie\",\"ja\":\"ルーマニア\",\"it\":\"Romania\",\"cn\":\"罗马尼亚\"}', '46.00000000', '25.00000000', '🇷🇴', 'U+1F1F7 U+1F1F4', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q218'),
(182, 'Russia', 'RUS', '643', 'RU', '7', 'Moscow', 'RUB', '₽', '.ru', 'Россия', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Asia/Anadyr\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"ANAT\",\"tzName\":\"Anadyr Time[4\"},{\"zoneName\":\"Asia/Barnaul\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"KRAT\",\"tzName\":\"Krasnoyarsk Time\"},{\"zoneName\":\"Asia/Chita\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"YAKT\",\"tzName\":\"Yakutsk Time\"},{\"zoneName\":\"Asia/Irkutsk\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"IRKT\",\"tzName\":\"Irkutsk Time\"},{\"zoneName\":\"Asia/Kamchatka\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"PETT\",\"tzName\":\"Kamchatka Time\"},{\"zoneName\":\"Asia/Khandyga\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"YAKT\",\"tzName\":\"Yakutsk Time\"},{\"zoneName\":\"Asia/Krasnoyarsk\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"KRAT\",\"tzName\":\"Krasnoyarsk Time\"},{\"zoneName\":\"Asia/Magadan\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"MAGT\",\"tzName\":\"Magadan Time\"},{\"zoneName\":\"Asia/Novokuznetsk\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"KRAT\",\"tzName\":\"Krasnoyarsk Time\"},{\"zoneName\":\"Asia/Novosibirsk\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"NOVT\",\"tzName\":\"Novosibirsk Time\"},{\"zoneName\":\"Asia/Omsk\",\"gmtOffset\":21600,\"gmtOffsetName\":\"UTC+06:00\",\"abbreviation\":\"OMST\",\"tzName\":\"Omsk Time\"},{\"zoneName\":\"Asia/Sakhalin\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"SAKT\",\"tzName\":\"Sakhalin Island Time\"},{\"zoneName\":\"Asia/Srednekolymsk\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"SRET\",\"tzName\":\"Srednekolymsk Time\"},{\"zoneName\":\"Asia/Tomsk\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"MSD+3\",\"tzName\":\"Moscow Daylight Time+3\"},{\"zoneName\":\"Asia/Ust-Nera\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"VLAT\",\"tzName\":\"Vladivostok Time\"},{\"zoneName\":\"Asia/Vladivostok\",\"gmtOffset\":36000,\"gmtOffsetName\":\"UTC+10:00\",\"abbreviation\":\"VLAT\",\"tzName\":\"Vladivostok Time\"},{\"zoneName\":\"Asia/Yakutsk\",\"gmtOffset\":32400,\"gmtOffsetName\":\"UTC+09:00\",\"abbreviation\":\"YAKT\",\"tzName\":\"Yakutsk Time\"},{\"zoneName\":\"Asia/Yekaterinburg\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"YEKT\",\"tzName\":\"Yekaterinburg Time\"},{\"zoneName\":\"Europe/Astrakhan\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"SAMT\",\"tzName\":\"Samara Time\"},{\"zoneName\":\"Europe/Kaliningrad\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"},{\"zoneName\":\"Europe/Kirov\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"MSK\",\"tzName\":\"Moscow Time\"},{\"zoneName\":\"Europe/Moscow\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"MSK\",\"tzName\":\"Moscow Time\"},{\"zoneName\":\"Europe/Samara\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"SAMT\",\"tzName\":\"Samara Time\"},{\"zoneName\":\"Europe/Saratov\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"MSD\",\"tzName\":\"Moscow Daylight Time+4\"},{\"zoneName\":\"Europe/Ulyanovsk\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"SAMT\",\"tzName\":\"Samara Time\"},{\"zoneName\":\"Europe/Volgograd\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"MSK\",\"tzName\":\"Moscow Standard Time\"}]', '{\"kr\":\"러시아\",\"br\":\"Rússia\",\"pt\":\"Rússia\",\"nl\":\"Rusland\",\"hr\":\"Rusija\",\"fa\":\"روسیه\",\"de\":\"Russland\",\"es\":\"Rusia\",\"fr\":\"Russie\",\"ja\":\"ロシア連邦\",\"it\":\"Russia\",\"cn\":\"俄罗斯联邦\"}', '60.00000000', '100.00000000', '🇷🇺', 'U+1F1F7 U+1F1FA', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q159'),
(183, 'Rwanda', 'RWA', '646', 'RW', '250', 'Kigali', 'RWF', 'FRw', '.rw', 'Rwanda', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Kigali\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"르완다\",\"br\":\"Ruanda\",\"pt\":\"Ruanda\",\"nl\":\"Rwanda\",\"hr\":\"Ruanda\",\"fa\":\"رواندا\",\"de\":\"Ruanda\",\"es\":\"Ruanda\",\"fr\":\"Rwanda\",\"ja\":\"ルワンダ\",\"it\":\"Ruanda\",\"cn\":\"卢旺达\"}', '-2.00000000', '30.00000000', '🇷🇼', 'U+1F1F7 U+1F1FC', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q1037'),
(184, 'Saint Helena', 'SHN', '654', 'SH', '290', 'Jamestown', 'SHP', '£', '.sh', 'Saint Helena', 'Africa', 'Western Africa', '[{\"zoneName\":\"Atlantic/St_Helena\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"세인트헬레나\",\"br\":\"Santa Helena\",\"pt\":\"Santa Helena\",\"nl\":\"Sint-Helena\",\"hr\":\"Sveta Helena\",\"fa\":\"سنت هلنا، اسنشن و تریستان دا کونا\",\"de\":\"Sankt Helena\",\"es\":\"Santa Helena\",\"fr\":\"Sainte-Hélène\",\"ja\":\"セントヘレナ・アセンションおよびトリスタンダクーニャ\",\"it\":\"Sant\'Elena\",\"cn\":\"圣赫勒拿\"}', '-15.95000000', '-5.70000000', '🇸🇭', 'U+1F1F8 U+1F1ED', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(185, 'Saint Kitts And Nevis', 'KNA', '659', 'KN', '1869', 'Basseterre', 'XCD', '$', '.kn', 'Saint Kitts and Nevis', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/St_Kitts\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"세인트키츠 네비스\",\"br\":\"São Cristóvão e Neves\",\"pt\":\"São Cristóvão e Neves\",\"nl\":\"Saint Kitts en Nevis\",\"hr\":\"Sveti Kristof i Nevis\",\"fa\":\"سنت کیتس و نویس\",\"de\":\"St. Kitts und Nevis\",\"es\":\"San Cristóbal y Nieves\",\"fr\":\"Saint-Christophe-et-Niévès\",\"ja\":\"セントクリストファー・ネイビス\",\"it\":\"Saint Kitts e Nevis\",\"cn\":\"圣基茨和尼维斯\"}', '17.33333333', '-62.75000000', '🇰🇳', 'U+1F1F0 U+1F1F3', '2018-07-20 20:11:03', '2021-12-04 08:12:55', 1, 'Q763'),
(186, 'Saint Lucia', 'LCA', '662', 'LC', '1758', 'Castries', 'XCD', '$', '.lc', 'Saint Lucia', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/St_Lucia\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"세인트루시아\",\"br\":\"Santa Lúcia\",\"pt\":\"Santa Lúcia\",\"nl\":\"Saint Lucia\",\"hr\":\"Sveta Lucija\",\"fa\":\"سنت لوسیا\",\"de\":\"Saint Lucia\",\"es\":\"Santa Lucía\",\"fr\":\"Saint-Lucie\",\"ja\":\"セントルシア\",\"it\":\"Santa Lucia\",\"cn\":\"圣卢西亚\"}', '13.88333333', '-60.96666666', '🇱🇨', 'U+1F1F1 U+1F1E8', '2018-07-20 20:11:03', '2021-12-04 08:12:48', 1, 'Q760'),
(187, 'Saint Pierre and Miquelon', 'SPM', '666', 'PM', '508', 'Saint-Pierre', 'EUR', '€', '.pm', 'Saint-Pierre-et-Miquelon', 'Americas', 'Northern America', '[{\"zoneName\":\"America/Miquelon\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"PMDT\",\"tzName\":\"Pierre & Miquelon Daylight Time\"}]', '{\"kr\":\"생피에르 미클롱\",\"br\":\"Saint-Pierre e Miquelon\",\"pt\":\"São Pedro e Miquelon\",\"nl\":\"Saint Pierre en Miquelon\",\"hr\":\"Sveti Petar i Mikelon\",\"fa\":\"سن پیر و میکلن\",\"de\":\"Saint-Pierre und Miquelon\",\"es\":\"San Pedro y Miquelón\",\"fr\":\"Saint-Pierre-et-Miquelon\",\"ja\":\"サンピエール島・ミクロン島\",\"it\":\"Saint-Pierre e Miquelon\",\"cn\":\"圣皮埃尔和密克隆\"}', '46.83333333', '-56.33333333', '🇵🇲', 'U+1F1F5 U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(188, 'Saint Vincent And The Grenadines', 'VCT', '670', 'VC', '1784', 'Kingstown', 'XCD', '$', '.vc', 'Saint Vincent and the Grenadines', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/St_Vincent\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"세인트빈센트 그레나딘\",\"br\":\"São Vicente e Granadinas\",\"pt\":\"São Vicente e Granadinas\",\"nl\":\"Saint Vincent en de Grenadines\",\"hr\":\"Sveti Vincent i Grenadini\",\"fa\":\"سنت وینسنت و گرنادین‌ها\",\"de\":\"Saint Vincent und die Grenadinen\",\"es\":\"San Vicente y Granadinas\",\"fr\":\"Saint-Vincent-et-les-Grenadines\",\"ja\":\"セントビンセントおよびグレナディーン諸島\",\"it\":\"Saint Vincent e Grenadine\",\"cn\":\"圣文森特和格林纳丁斯\"}', '13.25000000', '-61.20000000', '🇻🇨', 'U+1F1FB U+1F1E8', '2018-07-20 20:11:03', '2021-12-04 08:12:34', 1, 'Q757'),
(189, 'Saint-Barthelemy', 'BLM', '652', 'BL', '590', 'Gustavia', 'EUR', '€', '.bl', 'Saint-Barthélemy', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/St_Barthelemy\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"생바르텔레미\",\"br\":\"São Bartolomeu\",\"pt\":\"São Bartolomeu\",\"nl\":\"Saint Barthélemy\",\"hr\":\"Saint Barthélemy\",\"fa\":\"سن-بارتلمی\",\"de\":\"Saint-Barthélemy\",\"es\":\"San Bartolomé\",\"fr\":\"Saint-Barthélemy\",\"ja\":\"サン・バルテルミー\",\"it\":\"Antille Francesi\",\"cn\":\"圣巴泰勒米\"}', '18.50000000', '-63.41666666', '🇧🇱', 'U+1F1E7 U+1F1F1', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(190, 'Saint-Martin (French part)', 'MAF', '663', 'MF', '590', 'Marigot', 'EUR', '€', '.mf', 'Saint-Martin', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Marigot\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"세인트마틴 섬\",\"br\":\"Saint Martin\",\"pt\":\"Ilha São Martinho\",\"nl\":\"Saint-Martin\",\"hr\":\"Sveti Martin\",\"fa\":\"سینت مارتن\",\"de\":\"Saint Martin\",\"es\":\"Saint Martin\",\"fr\":\"Saint-Martin\",\"ja\":\"サン・マルタン（フランス領）\",\"it\":\"Saint Martin\",\"cn\":\"密克罗尼西亚\"}', '18.08333333', '-63.95000000', '🇲🇫', 'U+1F1F2 U+1F1EB', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(191, 'Samoa', 'WSM', '882', 'WS', '685', 'Apia', 'WST', 'SAT', '.ws', 'Samoa', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Apia\",\"gmtOffset\":50400,\"gmtOffsetName\":\"UTC+14:00\",\"abbreviation\":\"WST\",\"tzName\":\"West Samoa Time\"}]', '{\"kr\":\"사모아\",\"br\":\"Samoa\",\"pt\":\"Samoa\",\"nl\":\"Samoa\",\"hr\":\"Samoa\",\"fa\":\"ساموآ\",\"de\":\"Samoa\",\"es\":\"Samoa\",\"fr\":\"Samoa\",\"ja\":\"サモア\",\"it\":\"Samoa\",\"cn\":\"萨摩亚\"}', '-13.58333333', '-172.33333333', '🇼🇸', 'U+1F1FC U+1F1F8', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q683'),
(192, 'San Marino', 'SMR', '674', 'SM', '378', 'San Marino', 'EUR', '€', '.sm', 'San Marino', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/San_Marino\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"산마리노\",\"br\":\"San Marino\",\"pt\":\"São Marinho\",\"nl\":\"San Marino\",\"hr\":\"San Marino\",\"fa\":\"سان مارینو\",\"de\":\"San Marino\",\"es\":\"San Marino\",\"fr\":\"Saint-Marin\",\"ja\":\"サンマリノ\",\"it\":\"San Marino\",\"cn\":\"圣马力诺\"}', '43.76666666', '12.41666666', '🇸🇲', 'U+1F1F8 U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q238'),
(193, 'Sao Tome and Principe', 'STP', '678', 'ST', '239', 'Sao Tome', 'STD', 'Db', '.st', 'São Tomé e Príncipe', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Sao_Tome\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"상투메 프린시페\",\"br\":\"São Tomé e Príncipe\",\"pt\":\"São Tomé e Príncipe\",\"nl\":\"Sao Tomé en Principe\",\"hr\":\"Sveti Toma i Princip\",\"fa\":\"کواترو دو فرویرو\",\"de\":\"São Tomé und Príncipe\",\"es\":\"Santo Tomé y Príncipe\",\"fr\":\"Sao Tomé-et-Principe\",\"ja\":\"サントメ・プリンシペ\",\"it\":\"São Tomé e Príncipe\",\"cn\":\"圣多美和普林西比\"}', '1.00000000', '7.00000000', '🇸🇹', 'U+1F1F8 U+1F1F9', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q1039'),
(194, 'Saudi Arabia', 'SAU', '682', 'SA', '966', 'Riyadh', 'SAR', '﷼', '.sa', 'المملكة العربية السعودية', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Riyadh\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"kr\":\"사우디아라비아\",\"br\":\"Arábia Saudita\",\"pt\":\"Arábia Saudita\",\"nl\":\"Saoedi-Arabië\",\"hr\":\"Saudijska Arabija\",\"fa\":\"عربستان سعودی\",\"de\":\"Saudi-Arabien\",\"es\":\"Arabia Saudí\",\"fr\":\"Arabie Saoudite\",\"ja\":\"サウジアラビア\",\"it\":\"Arabia Saudita\",\"cn\":\"沙特阿拉伯\"}', '25.00000000', '45.00000000', '🇸🇦', 'U+1F1F8 U+1F1E6', '2018-07-20 20:11:03', '2021-09-26 13:09:09', 1, 'Q851'),
(195, 'Senegal', 'SEN', '686', 'SN', '221', 'Dakar', 'XOF', 'CFA', '.sn', 'Sénégal', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Dakar\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"세네갈\",\"br\":\"Senegal\",\"pt\":\"Senegal\",\"nl\":\"Senegal\",\"hr\":\"Senegal\",\"fa\":\"سنگال\",\"de\":\"Senegal\",\"es\":\"Senegal\",\"fr\":\"Sénégal\",\"ja\":\"セネガル\",\"it\":\"Senegal\",\"cn\":\"塞内加尔\"}', '14.00000000', '-14.00000000', '🇸🇳', 'U+1F1F8 U+1F1F3', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q1041'),
(196, 'Serbia', 'SRB', '688', 'RS', '381', 'Belgrade', 'RSD', 'din', '.rs', 'Србија', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Belgrade\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"세르비아\",\"br\":\"Sérvia\",\"pt\":\"Sérvia\",\"nl\":\"Servië\",\"hr\":\"Srbija\",\"fa\":\"صربستان\",\"de\":\"Serbien\",\"es\":\"Serbia\",\"fr\":\"Serbie\",\"ja\":\"セルビア\",\"it\":\"Serbia\",\"cn\":\"塞尔维亚\"}', '44.00000000', '21.00000000', '🇷🇸', 'U+1F1F7 U+1F1F8', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q403'),
(197, 'Seychelles', 'SYC', '690', 'SC', '248', 'Victoria', 'SCR', 'SRe', '.sc', 'Seychelles', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Indian/Mahe\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"SCT\",\"tzName\":\"Seychelles Time\"}]', '{\"kr\":\"세이셸\",\"br\":\"Seicheles\",\"pt\":\"Seicheles\",\"nl\":\"Seychellen\",\"hr\":\"Sejšeli\",\"fa\":\"سیشل\",\"de\":\"Seychellen\",\"es\":\"Seychelles\",\"fr\":\"Seychelles\",\"ja\":\"セーシェル\",\"it\":\"Seychelles\",\"cn\":\"塞舌尔\"}', '-4.58333333', '55.66666666', '🇸🇨', 'U+1F1F8 U+1F1E8', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q1042'),
(198, 'Sierra Leone', 'SLE', '694', 'SL', '232', 'Freetown', 'SLL', 'Le', '.sl', 'Sierra Leone', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Freetown\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"시에라리온\",\"br\":\"Serra Leoa\",\"pt\":\"Serra Leoa\",\"nl\":\"Sierra Leone\",\"hr\":\"Sijera Leone\",\"fa\":\"سیرالئون\",\"de\":\"Sierra Leone\",\"es\":\"Sierra Leone\",\"fr\":\"Sierra Leone\",\"ja\":\"シエラレオネ\",\"it\":\"Sierra Leone\",\"cn\":\"塞拉利昂\"}', '8.50000000', '-11.50000000', '🇸🇱', 'U+1F1F8 U+1F1F1', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q1044'),
(199, 'Singapore', 'SGP', '702', 'SG', '65', 'Singapur', 'SGD', '$', '.sg', 'Singapore', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Singapore\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"SGT\",\"tzName\":\"Singapore Time\"}]', '{\"kr\":\"싱가포르\",\"br\":\"Singapura\",\"pt\":\"Singapura\",\"nl\":\"Singapore\",\"hr\":\"Singapur\",\"fa\":\"سنگاپور\",\"de\":\"Singapur\",\"es\":\"Singapur\",\"fr\":\"Singapour\",\"ja\":\"シンガポール\",\"it\":\"Singapore\",\"cn\":\"新加坡\"}', '1.36666666', '103.80000000', '🇸🇬', 'U+1F1F8 U+1F1EC', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q334'),
(200, 'Slovakia', 'SVK', '703', 'SK', '421', 'Bratislava', 'EUR', '€', '.sk', 'Slovensko', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Bratislava\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"슬로바키아\",\"br\":\"Eslováquia\",\"pt\":\"Eslováquia\",\"nl\":\"Slowakije\",\"hr\":\"Slovačka\",\"fa\":\"اسلواکی\",\"de\":\"Slowakei\",\"es\":\"República Eslovaca\",\"fr\":\"Slovaquie\",\"ja\":\"スロバキア\",\"it\":\"Slovacchia\",\"cn\":\"斯洛伐克\"}', '48.66666666', '19.50000000', '🇸🇰', 'U+1F1F8 U+1F1F0', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q214'),
(201, 'Slovenia', 'SVN', '705', 'SI', '386', 'Ljubljana', 'EUR', '€', '.si', 'Slovenija', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Ljubljana\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"슬로베니아\",\"br\":\"Eslovênia\",\"pt\":\"Eslovénia\",\"nl\":\"Slovenië\",\"hr\":\"Slovenija\",\"fa\":\"اسلوونی\",\"de\":\"Slowenien\",\"es\":\"Eslovenia\",\"fr\":\"Slovénie\",\"ja\":\"スロベニア\",\"it\":\"Slovenia\",\"cn\":\"斯洛文尼亚\"}', '46.11666666', '14.81666666', '🇸🇮', 'U+1F1F8 U+1F1EE', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q215');
INSERT INTO `countries` (`id`, `name`, `iso3`, `numeric_code`, `iso2`, `phonecode`, `capital`, `currency`, `currency_symbol`, `tld`, `native`, `region`, `subregion`, `timezones`, `translations`, `latitude`, `longitude`, `emoji`, `emojiU`, `created_at`, `updated_at`, `flag`, `wikiDataId`) VALUES
(202, 'Solomon Islands', 'SLB', '090', 'SB', '677', 'Honiara', 'SBD', 'Si$', '.sb', 'Solomon Islands', 'Oceania', 'Melanesia', '[{\"zoneName\":\"Pacific/Guadalcanal\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"SBT\",\"tzName\":\"Solomon Islands Time\"}]', '{\"kr\":\"솔로몬 제도\",\"br\":\"Ilhas Salomão\",\"pt\":\"Ilhas Salomão\",\"nl\":\"Salomonseilanden\",\"hr\":\"Solomonski Otoci\",\"fa\":\"جزایر سلیمان\",\"de\":\"Salomonen\",\"es\":\"Islas Salomón\",\"fr\":\"Îles Salomon\",\"ja\":\"ソロモン諸島\",\"it\":\"Isole Salomone\",\"cn\":\"所罗门群岛\"}', '-8.00000000', '159.00000000', '🇸🇧', 'U+1F1F8 U+1F1E7', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q685'),
(203, 'Somalia', 'SOM', '706', 'SO', '252', 'Mogadishu', 'SOS', 'Sh.so.', '.so', 'Soomaaliya', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Mogadishu\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"소말리아\",\"br\":\"Somália\",\"pt\":\"Somália\",\"nl\":\"Somalië\",\"hr\":\"Somalija\",\"fa\":\"سومالی\",\"de\":\"Somalia\",\"es\":\"Somalia\",\"fr\":\"Somalie\",\"ja\":\"ソマリア\",\"it\":\"Somalia\",\"cn\":\"索马里\"}', '10.00000000', '49.00000000', '🇸🇴', 'U+1F1F8 U+1F1F4', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q1045'),
(204, 'South Africa', 'ZAF', '710', 'ZA', '27', 'Pretoria', 'ZAR', 'R', '.za', 'South Africa', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Africa/Johannesburg\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"SAST\",\"tzName\":\"South African Standard Time\"}]', '{\"kr\":\"남아프리카 공화국\",\"br\":\"República Sul-Africana\",\"pt\":\"República Sul-Africana\",\"nl\":\"Zuid-Afrika\",\"hr\":\"Južnoafrička Republika\",\"fa\":\"آفریقای جنوبی\",\"de\":\"Republik Südafrika\",\"es\":\"República de Sudáfrica\",\"fr\":\"Afrique du Sud\",\"ja\":\"南アフリカ\",\"it\":\"Sud Africa\",\"cn\":\"南非\"}', '-29.00000000', '24.00000000', '🇿🇦', 'U+1F1FF U+1F1E6', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q258'),
(205, 'South Georgia', 'SGS', '239', 'GS', '500', 'Grytviken', 'GBP', '£', '.gs', 'South Georgia', 'Americas', 'South America', '[{\"zoneName\":\"Atlantic/South_Georgia\",\"gmtOffset\":-7200,\"gmtOffsetName\":\"UTC-02:00\",\"abbreviation\":\"GST\",\"tzName\":\"South Georgia and the South Sandwich Islands Time\"}]', '{\"kr\":\"사우스조지아\",\"br\":\"Ilhas Geórgias do Sul e Sandwich do Sul\",\"pt\":\"Ilhas Geórgia do Sul e Sanduíche do Sul\",\"nl\":\"Zuid-Georgia en Zuidelijke Sandwicheilanden\",\"hr\":\"Južna Georgija i otočje Južni Sandwich\",\"fa\":\"جزایر جورجیای جنوبی و ساندویچ جنوبی\",\"de\":\"Südgeorgien und die Südlichen Sandwichinseln\",\"es\":\"Islas Georgias del Sur y Sandwich del Sur\",\"fr\":\"Géorgie du Sud-et-les Îles Sandwich du Sud\",\"ja\":\"サウスジョージア・サウスサンドウィッチ諸島\",\"it\":\"Georgia del Sud e Isole Sandwich Meridionali\",\"cn\":\"南乔治亚\"}', '-54.50000000', '-37.00000000', '🇬🇸', 'U+1F1EC U+1F1F8', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(206, 'South Sudan', 'SSD', '728', 'SS', '211', 'Juba', 'SSP', '£', '.ss', 'South Sudan', 'Africa', 'Middle Africa', '[{\"zoneName\":\"Africa/Juba\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"남수단\",\"br\":\"Sudão do Sul\",\"pt\":\"Sudão do Sul\",\"nl\":\"Zuid-Soedan\",\"hr\":\"Južni Sudan\",\"fa\":\"سودان جنوبی\",\"de\":\"Südsudan\",\"es\":\"Sudán del Sur\",\"fr\":\"Soudan du Sud\",\"ja\":\"南スーダン\",\"it\":\"Sudan del sud\",\"cn\":\"南苏丹\"}', '7.00000000', '30.00000000', '🇸🇸', 'U+1F1F8 U+1F1F8', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q958'),
(207, 'Spain', 'ESP', '724', 'ES', '34', 'Madrid', 'EUR', '€', '.es', 'España', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Africa/Ceuta\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"},{\"zoneName\":\"Atlantic/Canary\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"WET\",\"tzName\":\"Western European Time\"},{\"zoneName\":\"Europe/Madrid\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"스페인\",\"br\":\"Espanha\",\"pt\":\"Espanha\",\"nl\":\"Spanje\",\"hr\":\"Španjolska\",\"fa\":\"اسپانیا\",\"de\":\"Spanien\",\"es\":\"España\",\"fr\":\"Espagne\",\"ja\":\"スペイン\",\"it\":\"Spagna\",\"cn\":\"西班牙\"}', '40.00000000', '-4.00000000', '🇪🇸', 'U+1F1EA U+1F1F8', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q29'),
(208, 'Sri Lanka', 'LKA', '144', 'LK', '94', 'Colombo', 'LKR', 'Rs', '.lk', 'śrī laṃkāva', 'Asia', 'Southern Asia', '[{\"zoneName\":\"Asia/Colombo\",\"gmtOffset\":19800,\"gmtOffsetName\":\"UTC+05:30\",\"abbreviation\":\"IST\",\"tzName\":\"Indian Standard Time\"}]', '{\"kr\":\"스리랑카\",\"br\":\"Sri Lanka\",\"pt\":\"Sri Lanka\",\"nl\":\"Sri Lanka\",\"hr\":\"Šri Lanka\",\"fa\":\"سری‌لانکا\",\"de\":\"Sri Lanka\",\"es\":\"Sri Lanka\",\"fr\":\"Sri Lanka\",\"ja\":\"スリランカ\",\"it\":\"Sri Lanka\",\"cn\":\"斯里兰卡\"}', '7.00000000', '81.00000000', '🇱🇰', 'U+1F1F1 U+1F1F0', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q854'),
(209, 'Sudan', 'SDN', '729', 'SD', '249', 'Khartoum', 'SDG', '.س.ج', '.sd', 'السودان', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa/Khartoum\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EAT\",\"tzName\":\"Eastern African Time\"}]', '{\"kr\":\"수단\",\"br\":\"Sudão\",\"pt\":\"Sudão\",\"nl\":\"Soedan\",\"hr\":\"Sudan\",\"fa\":\"سودان\",\"de\":\"Sudan\",\"es\":\"Sudán\",\"fr\":\"Soudan\",\"ja\":\"スーダン\",\"it\":\"Sudan\",\"cn\":\"苏丹\"}', '15.00000000', '30.00000000', '🇸🇩', 'U+1F1F8 U+1F1E9', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q1049'),
(210, 'Suriname', 'SUR', '740', 'SR', '597', 'Paramaribo', 'SRD', '$', '.sr', 'Suriname', 'Americas', 'South America', '[{\"zoneName\":\"America/Paramaribo\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"SRT\",\"tzName\":\"Suriname Time\"}]', '{\"kr\":\"수리남\",\"br\":\"Suriname\",\"pt\":\"Suriname\",\"nl\":\"Suriname\",\"hr\":\"Surinam\",\"fa\":\"سورینام\",\"de\":\"Suriname\",\"es\":\"Surinam\",\"fr\":\"Surinam\",\"ja\":\"スリナム\",\"it\":\"Suriname\",\"cn\":\"苏里南\"}', '4.00000000', '-56.00000000', '🇸🇷', 'U+1F1F8 U+1F1F7', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q730'),
(211, 'Svalbard And Jan Mayen Islands', 'SJM', '744', 'SJ', '47', 'Longyearbyen', 'NOK', 'kr', '.sj', 'Svalbard og Jan Mayen', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Arctic/Longyearbyen\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"스발바르 얀마옌 제도\",\"br\":\"Svalbard\",\"pt\":\"Svalbard\",\"nl\":\"Svalbard en Jan Mayen\",\"hr\":\"Svalbard i Jan Mayen\",\"fa\":\"سوالبارد و یان ماین\",\"de\":\"Svalbard und Jan Mayen\",\"es\":\"Islas Svalbard y Jan Mayen\",\"fr\":\"Svalbard et Jan Mayen\",\"ja\":\"スヴァールバル諸島およびヤンマイエン島\",\"it\":\"Svalbard e Jan Mayen\",\"cn\":\"斯瓦尔巴和扬马延群岛\"}', '78.00000000', '20.00000000', '🇸🇯', 'U+1F1F8 U+1F1EF', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(212, 'Swaziland', 'SWZ', '748', 'SZ', '268', 'Mbabane', 'SZL', 'E', '.sz', 'Swaziland', 'Africa', 'Southern Africa', '[{\"zoneName\":\"Africa/Mbabane\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"SAST\",\"tzName\":\"South African Standard Time\"}]', '{\"kr\":\"에스와티니\",\"br\":\"Suazilândia\",\"pt\":\"Suazilândia\",\"nl\":\"Swaziland\",\"hr\":\"Svazi\",\"fa\":\"سوازیلند\",\"de\":\"Swasiland\",\"es\":\"Suazilandia\",\"fr\":\"Swaziland\",\"ja\":\"スワジランド\",\"it\":\"Swaziland\",\"cn\":\"斯威士兰\"}', '-26.50000000', '31.50000000', '🇸🇿', 'U+1F1F8 U+1F1FF', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q1050'),
(213, 'Sweden', 'SWE', '752', 'SE', '46', 'Stockholm', 'SEK', 'kr', '.se', 'Sverige', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/Stockholm\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"스웨덴\",\"br\":\"Suécia\",\"pt\":\"Suécia\",\"nl\":\"Zweden\",\"hr\":\"Švedska\",\"fa\":\"سوئد\",\"de\":\"Schweden\",\"es\":\"Suecia\",\"fr\":\"Suède\",\"ja\":\"スウェーデン\",\"it\":\"Svezia\",\"cn\":\"瑞典\"}', '62.00000000', '15.00000000', '🇸🇪', 'U+1F1F8 U+1F1EA', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q34'),
(214, 'Switzerland', 'CHE', '756', 'CH', '41', 'Bern', 'CHF', 'CHf', '.ch', 'Schweiz', 'Europe', 'Western Europe', '[{\"zoneName\":\"Europe/Zurich\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"스위스\",\"br\":\"Suíça\",\"pt\":\"Suíça\",\"nl\":\"Zwitserland\",\"hr\":\"Švicarska\",\"fa\":\"سوئیس\",\"de\":\"Schweiz\",\"es\":\"Suiza\",\"fr\":\"Suisse\",\"ja\":\"スイス\",\"it\":\"Svizzera\",\"cn\":\"瑞士\"}', '47.00000000', '8.00000000', '🇨🇭', 'U+1F1E8 U+1F1ED', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q39'),
(215, 'Syria', 'SYR', '760', 'SY', '963', 'Damascus', 'SYP', 'LS', '.sy', 'سوريا', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Damascus\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"시리아\",\"br\":\"Síria\",\"pt\":\"Síria\",\"nl\":\"Syrië\",\"hr\":\"Sirija\",\"fa\":\"سوریه\",\"de\":\"Syrien\",\"es\":\"Siria\",\"fr\":\"Syrie\",\"ja\":\"シリア・アラブ共和国\",\"it\":\"Siria\",\"cn\":\"叙利亚\"}', '35.00000000', '38.00000000', '🇸🇾', 'U+1F1F8 U+1F1FE', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q858'),
(216, 'Taiwan', 'TWN', '158', 'TW', '886', 'Taipei', 'TWD', '$', '.tw', '臺灣', 'Asia', 'Eastern Asia', '[{\"zoneName\":\"Asia/Taipei\",\"gmtOffset\":28800,\"gmtOffsetName\":\"UTC+08:00\",\"abbreviation\":\"CST\",\"tzName\":\"China Standard Time\"}]', '{\"kr\":\"대만\",\"br\":\"Taiwan\",\"pt\":\"Taiwan\",\"nl\":\"Taiwan\",\"hr\":\"Tajvan\",\"fa\":\"تایوان\",\"de\":\"Taiwan\",\"es\":\"Taiwán\",\"fr\":\"Taïwan\",\"ja\":\"台湾（中華民国）\",\"it\":\"Taiwan\",\"cn\":\"中国台湾\"}', '23.50000000', '121.00000000', '🇹🇼', 'U+1F1F9 U+1F1FC', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q865'),
(217, 'Tajikistan', 'TJK', '762', 'TJ', '992', 'Dushanbe', 'TJS', 'SM', '.tj', 'Тоҷикистон', 'Asia', 'Central Asia', '[{\"zoneName\":\"Asia/Dushanbe\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"TJT\",\"tzName\":\"Tajikistan Time\"}]', '{\"kr\":\"타지키스탄\",\"br\":\"Tajiquistão\",\"pt\":\"Tajiquistão\",\"nl\":\"Tadzjikistan\",\"hr\":\"Tađikistan\",\"fa\":\"تاجیکستان\",\"de\":\"Tadschikistan\",\"es\":\"Tayikistán\",\"fr\":\"Tadjikistan\",\"ja\":\"タジキスタン\",\"it\":\"Tagikistan\",\"cn\":\"塔吉克斯坦\"}', '39.00000000', '71.00000000', '🇹🇯', 'U+1F1F9 U+1F1EF', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q863'),
(218, 'Tanzania', 'TZA', '834', 'TZ', '255', 'Dodoma', 'TZS', 'TSh', '.tz', 'Tanzania', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Dar_es_Salaam\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"탄자니아\",\"br\":\"Tanzânia\",\"pt\":\"Tanzânia\",\"nl\":\"Tanzania\",\"hr\":\"Tanzanija\",\"fa\":\"تانزانیا\",\"de\":\"Tansania\",\"es\":\"Tanzania\",\"fr\":\"Tanzanie\",\"ja\":\"タンザニア\",\"it\":\"Tanzania\",\"cn\":\"坦桑尼亚\"}', '-6.00000000', '35.00000000', '🇹🇿', 'U+1F1F9 U+1F1FF', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q924'),
(219, 'Thailand', 'THA', '764', 'TH', '66', 'Bangkok', 'THB', '฿', '.th', 'ประเทศไทย', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Bangkok\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"ICT\",\"tzName\":\"Indochina Time\"}]', '{\"kr\":\"태국\",\"br\":\"Tailândia\",\"pt\":\"Tailândia\",\"nl\":\"Thailand\",\"hr\":\"Tajland\",\"fa\":\"تایلند\",\"de\":\"Thailand\",\"es\":\"Tailandia\",\"fr\":\"Thaïlande\",\"ja\":\"タイ\",\"it\":\"Tailandia\",\"cn\":\"泰国\"}', '15.00000000', '100.00000000', '🇹🇭', 'U+1F1F9 U+1F1ED', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q869'),
(220, 'Togo', 'TGO', '768', 'TG', '228', 'Lome', 'XOF', 'CFA', '.tg', 'Togo', 'Africa', 'Western Africa', '[{\"zoneName\":\"Africa/Lome\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"토고\",\"br\":\"Togo\",\"pt\":\"Togo\",\"nl\":\"Togo\",\"hr\":\"Togo\",\"fa\":\"توگو\",\"de\":\"Togo\",\"es\":\"Togo\",\"fr\":\"Togo\",\"ja\":\"トーゴ\",\"it\":\"Togo\",\"cn\":\"多哥\"}', '8.00000000', '1.16666666', '🇹🇬', 'U+1F1F9 U+1F1EC', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q945'),
(221, 'Tokelau', 'TKL', '772', 'TK', '690', '', 'NZD', '$', '.tk', 'Tokelau', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Fakaofo\",\"gmtOffset\":46800,\"gmtOffsetName\":\"UTC+13:00\",\"abbreviation\":\"TKT\",\"tzName\":\"Tokelau Time\"}]', '{\"kr\":\"토켈라우\",\"br\":\"Tokelau\",\"pt\":\"Toquelau\",\"nl\":\"Tokelau\",\"hr\":\"Tokelau\",\"fa\":\"توکلائو\",\"de\":\"Tokelau\",\"es\":\"Islas Tokelau\",\"fr\":\"Tokelau\",\"ja\":\"トケラウ\",\"it\":\"Isole Tokelau\",\"cn\":\"托克劳\"}', '-9.00000000', '-172.00000000', '🇹🇰', 'U+1F1F9 U+1F1F0', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(222, 'Tonga', 'TON', '776', 'TO', '676', 'Nuku\'alofa', 'TOP', '$', '.to', 'Tonga', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Tongatapu\",\"gmtOffset\":46800,\"gmtOffsetName\":\"UTC+13:00\",\"abbreviation\":\"TOT\",\"tzName\":\"Tonga Time\"}]', '{\"kr\":\"통가\",\"br\":\"Tonga\",\"pt\":\"Tonga\",\"nl\":\"Tonga\",\"hr\":\"Tonga\",\"fa\":\"تونگا\",\"de\":\"Tonga\",\"es\":\"Tonga\",\"fr\":\"Tonga\",\"ja\":\"トンガ\",\"it\":\"Tonga\",\"cn\":\"汤加\"}', '-20.00000000', '-175.00000000', '🇹🇴', 'U+1F1F9 U+1F1F4', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q678'),
(223, 'Trinidad And Tobago', 'TTO', '780', 'TT', '1868', 'Port of Spain', 'TTD', '$', '.tt', 'Trinidad and Tobago', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Port_of_Spain\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"트리니다드 토바고\",\"br\":\"Trinidad e Tobago\",\"pt\":\"Trindade e Tobago\",\"nl\":\"Trinidad en Tobago\",\"hr\":\"Trinidad i Tobago\",\"fa\":\"ترینیداد و توباگو\",\"de\":\"Trinidad und Tobago\",\"es\":\"Trinidad y Tobago\",\"fr\":\"Trinité et Tobago\",\"ja\":\"トリニダード・トバゴ\",\"it\":\"Trinidad e Tobago\",\"cn\":\"特立尼达和多巴哥\"}', '11.00000000', '-61.00000000', '🇹🇹', 'U+1F1F9 U+1F1F9', '2018-07-20 20:11:03', '2021-12-04 08:12:17', 1, 'Q754'),
(224, 'Tunisia', 'TUN', '788', 'TN', '216', 'Tunis', 'TND', 'ت.د', '.tn', 'تونس', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa/Tunis\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"튀니지\",\"br\":\"Tunísia\",\"pt\":\"Tunísia\",\"nl\":\"Tunesië\",\"hr\":\"Tunis\",\"fa\":\"تونس\",\"de\":\"Tunesien\",\"es\":\"Túnez\",\"fr\":\"Tunisie\",\"ja\":\"チュニジア\",\"it\":\"Tunisia\",\"cn\":\"突尼斯\"}', '34.00000000', '9.00000000', '🇹🇳', 'U+1F1F9 U+1F1F3', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q948'),
(225, 'Turkey', 'TUR', '792', 'TR', '90', 'Ankara', 'TRY', '₺', '.tr', 'Türkiye', 'Asia', 'Western Asia', '[{\"zoneName\":\"Europe/Istanbul\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"터키\",\"br\":\"Turquia\",\"pt\":\"Turquia\",\"nl\":\"Turkije\",\"hr\":\"Turska\",\"fa\":\"ترکیه\",\"de\":\"Türkei\",\"es\":\"Turquía\",\"fr\":\"Turquie\",\"ja\":\"トルコ\",\"it\":\"Turchia\",\"cn\":\"土耳其\"}', '39.00000000', '35.00000000', '🇹🇷', 'U+1F1F9 U+1F1F7', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q43'),
(226, 'Turkmenistan', 'TKM', '795', 'TM', '993', 'Ashgabat', 'TMT', 'T', '.tm', 'Türkmenistan', 'Asia', 'Central Asia', '[{\"zoneName\":\"Asia/Ashgabat\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"TMT\",\"tzName\":\"Turkmenistan Time\"}]', '{\"kr\":\"투르크메니스탄\",\"br\":\"Turcomenistão\",\"pt\":\"Turquemenistão\",\"nl\":\"Turkmenistan\",\"hr\":\"Turkmenistan\",\"fa\":\"ترکمنستان\",\"de\":\"Turkmenistan\",\"es\":\"Turkmenistán\",\"fr\":\"Turkménistan\",\"ja\":\"トルクメニスタン\",\"it\":\"Turkmenistan\",\"cn\":\"土库曼斯坦\"}', '40.00000000', '60.00000000', '🇹🇲', 'U+1F1F9 U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q874'),
(227, 'Turks And Caicos Islands', 'TCA', '796', 'TC', '1649', 'Cockburn Town', 'USD', '$', '.tc', 'Turks and Caicos Islands', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Grand_Turk\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"}]', '{\"kr\":\"터크스 케이커스 제도\",\"br\":\"Ilhas Turcas e Caicos\",\"pt\":\"Ilhas Turcas e Caicos\",\"nl\":\"Turks- en Caicoseilanden\",\"hr\":\"Otoci Turks i Caicos\",\"fa\":\"جزایر تورکس و کایکوس\",\"de\":\"Turks- und Caicosinseln\",\"es\":\"Islas Turks y Caicos\",\"fr\":\"Îles Turques-et-Caïques\",\"ja\":\"タークス・カイコス諸島\",\"it\":\"Isole Turks e Caicos\",\"cn\":\"特克斯和凯科斯群岛\"}', '21.75000000', '-71.58333333', '🇹🇨', 'U+1F1F9 U+1F1E8', '2018-07-20 20:11:03', '2021-12-04 08:12:06', 1, NULL),
(228, 'Tuvalu', 'TUV', '798', 'TV', '688', 'Funafuti', 'AUD', '$', '.tv', 'Tuvalu', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Funafuti\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"TVT\",\"tzName\":\"Tuvalu Time\"}]', '{\"kr\":\"투발루\",\"br\":\"Tuvalu\",\"pt\":\"Tuvalu\",\"nl\":\"Tuvalu\",\"hr\":\"Tuvalu\",\"fa\":\"تووالو\",\"de\":\"Tuvalu\",\"es\":\"Tuvalu\",\"fr\":\"Tuvalu\",\"ja\":\"ツバル\",\"it\":\"Tuvalu\",\"cn\":\"图瓦卢\"}', '-8.00000000', '178.00000000', '🇹🇻', 'U+1F1F9 U+1F1FB', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q672'),
(229, 'Uganda', 'UGA', '800', 'UG', '256', 'Kampala', 'UGX', 'USh', '.ug', 'Uganda', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Kampala\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"EAT\",\"tzName\":\"East Africa Time\"}]', '{\"kr\":\"우간다\",\"br\":\"Uganda\",\"pt\":\"Uganda\",\"nl\":\"Oeganda\",\"hr\":\"Uganda\",\"fa\":\"اوگاندا\",\"de\":\"Uganda\",\"es\":\"Uganda\",\"fr\":\"Uganda\",\"ja\":\"ウガンダ\",\"it\":\"Uganda\",\"cn\":\"乌干达\"}', '1.00000000', '32.00000000', '🇺🇬', 'U+1F1FA U+1F1EC', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q1036'),
(230, 'Ukraine', 'UKR', '804', 'UA', '380', 'Kiev', 'UAH', '₴', '.ua', 'Україна', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Kiev\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"},{\"zoneName\":\"Europe/Simferopol\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"MSK\",\"tzName\":\"Moscow Time\"},{\"zoneName\":\"Europe/Uzhgorod\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"},{\"zoneName\":\"Europe/Zaporozhye\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"EET\",\"tzName\":\"Eastern European Time\"}]', '{\"kr\":\"우크라이나\",\"br\":\"Ucrânia\",\"pt\":\"Ucrânia\",\"nl\":\"Oekraïne\",\"hr\":\"Ukrajina\",\"fa\":\"وکراین\",\"de\":\"Ukraine\",\"es\":\"Ucrania\",\"fr\":\"Ukraine\",\"ja\":\"ウクライナ\",\"it\":\"Ucraina\",\"cn\":\"乌克兰\"}', '49.00000000', '32.00000000', '🇺🇦', 'U+1F1FA U+1F1E6', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q212'),
(231, 'United Arab Emirates', 'ARE', '784', 'AE', '971', 'Abu Dhabi', 'AED', 'إ.د', '.ae', 'دولة الإمارات العربية المتحدة', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Dubai\",\"gmtOffset\":14400,\"gmtOffsetName\":\"UTC+04:00\",\"abbreviation\":\"GST\",\"tzName\":\"Gulf Standard Time\"}]', '{\"kr\":\"아랍에미리트\",\"br\":\"Emirados árabes Unidos\",\"pt\":\"Emirados árabes Unidos\",\"nl\":\"Verenigde Arabische Emiraten\",\"hr\":\"Ujedinjeni Arapski Emirati\",\"fa\":\"امارات متحده عربی\",\"de\":\"Vereinigte Arabische Emirate\",\"es\":\"Emiratos Árabes Unidos\",\"fr\":\"Émirats arabes unis\",\"ja\":\"アラブ首長国連邦\",\"it\":\"Emirati Arabi Uniti\",\"cn\":\"阿拉伯联合酋长国\"}', '24.00000000', '54.00000000', '🇦🇪', 'U+1F1E6 U+1F1EA', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q878'),
(232, 'United Kingdom', 'GBR', '826', 'GB', '44', 'London', 'GBP', '£', '.uk', 'United Kingdom', 'Europe', 'Northern Europe', '[{\"zoneName\":\"Europe/London\",\"gmtOffset\":0,\"gmtOffsetName\":\"UTC±00\",\"abbreviation\":\"GMT\",\"tzName\":\"Greenwich Mean Time\"}]', '{\"kr\":\"영국\",\"br\":\"Reino Unido\",\"pt\":\"Reino Unido\",\"nl\":\"Verenigd Koninkrijk\",\"hr\":\"Ujedinjeno Kraljevstvo\",\"fa\":\"بریتانیای کبیر و ایرلند شمالی\",\"de\":\"Vereinigtes Königreich\",\"es\":\"Reino Unido\",\"fr\":\"Royaume-Uni\",\"ja\":\"イギリス\",\"it\":\"Regno Unito\",\"cn\":\"英国\"}', '54.00000000', '-2.00000000', '🇬🇧', 'U+1F1EC U+1F1E7', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q145'),
(233, 'United States', 'USA', '840', 'US', '1', 'Washington', 'USD', '$', '.us', 'United States', 'Americas', 'Northern America', '[{\"zoneName\":\"America/Adak\",\"gmtOffset\":-36000,\"gmtOffsetName\":\"UTC-10:00\",\"abbreviation\":\"HST\",\"tzName\":\"Hawaii–Aleutian Standard Time\"},{\"zoneName\":\"America/Anchorage\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"America/Boise\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Chicago\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Denver\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Detroit\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Indianapolis\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Knox\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Marengo\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Petersburg\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Tell_City\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Vevay\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Vincennes\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Indiana/Winamac\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Juneau\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"America/Kentucky/Louisville\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Kentucky/Monticello\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Los_Angeles\",\"gmtOffset\":-28800,\"gmtOffsetName\":\"UTC-08:00\",\"abbreviation\":\"PST\",\"tzName\":\"Pacific Standard Time (North America\"},{\"zoneName\":\"America/Menominee\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Metlakatla\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"America/New_York\",\"gmtOffset\":-18000,\"gmtOffsetName\":\"UTC-05:00\",\"abbreviation\":\"EST\",\"tzName\":\"Eastern Standard Time (North America\"},{\"zoneName\":\"America/Nome\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"America/North_Dakota/Beulah\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/North_Dakota/Center\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/North_Dakota/New_Salem\",\"gmtOffset\":-21600,\"gmtOffsetName\":\"UTC-06:00\",\"abbreviation\":\"CST\",\"tzName\":\"Central Standard Time (North America\"},{\"zoneName\":\"America/Phoenix\",\"gmtOffset\":-25200,\"gmtOffsetName\":\"UTC-07:00\",\"abbreviation\":\"MST\",\"tzName\":\"Mountain Standard Time (North America\"},{\"zoneName\":\"America/Sitka\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"America/Yakutat\",\"gmtOffset\":-32400,\"gmtOffsetName\":\"UTC-09:00\",\"abbreviation\":\"AKST\",\"tzName\":\"Alaska Standard Time\"},{\"zoneName\":\"Pacific/Honolulu\",\"gmtOffset\":-36000,\"gmtOffsetName\":\"UTC-10:00\",\"abbreviation\":\"HST\",\"tzName\":\"Hawaii–Aleutian Standard Time\"}]', '{\"kr\":\"미국\",\"br\":\"Estados Unidos\",\"pt\":\"Estados Unidos\",\"nl\":\"Verenigde Staten\",\"hr\":\"Sjedinjene Američke Države\",\"fa\":\"ایالات متحده آمریکا\",\"de\":\"Vereinigte Staaten von Amerika\",\"es\":\"Estados Unidos\",\"fr\":\"États-Unis\",\"ja\":\"アメリカ合衆国\",\"it\":\"Stati Uniti D\'America\",\"cn\":\"美国\"}', '38.00000000', '-97.00000000', '🇺🇸', 'U+1F1FA U+1F1F8', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q30'),
(234, 'United States Minor Outlying Islands', 'UMI', '581', 'UM', '1', '', 'USD', '$', '.us', 'United States Minor Outlying Islands', 'Americas', 'Northern America', '[{\"zoneName\":\"Pacific/Midway\",\"gmtOffset\":-39600,\"gmtOffsetName\":\"UTC-11:00\",\"abbreviation\":\"SST\",\"tzName\":\"Samoa Standard Time\"},{\"zoneName\":\"Pacific/Wake\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"WAKT\",\"tzName\":\"Wake Island Time\"}]', '{\"kr\":\"미국령 군소 제도\",\"br\":\"Ilhas Menores Distantes dos Estados Unidos\",\"pt\":\"Ilhas Menores Distantes dos Estados Unidos\",\"nl\":\"Kleine afgelegen eilanden van de Verenigde Staten\",\"hr\":\"Mali udaljeni otoci SAD-a\",\"fa\":\"جزایر کوچک حاشیه‌ای ایالات متحده آمریکا\",\"de\":\"Kleinere Inselbesitzungen der Vereinigten Staaten\",\"es\":\"Islas Ultramarinas Menores de Estados Unidos\",\"fr\":\"Îles mineures éloignées des États-Unis\",\"ja\":\"合衆国領有小離島\",\"it\":\"Isole minori esterne degli Stati Uniti d\'America\",\"cn\":\"美国本土外小岛屿\"}', '0.00000000', '0.00000000', '🇺🇲', 'U+1F1FA U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(235, 'Uruguay', 'URY', '858', 'UY', '598', 'Montevideo', 'UYU', '$', '.uy', 'Uruguay', 'Americas', 'South America', '[{\"zoneName\":\"America/Montevideo\",\"gmtOffset\":-10800,\"gmtOffsetName\":\"UTC-03:00\",\"abbreviation\":\"UYT\",\"tzName\":\"Uruguay Standard Time\"}]', '{\"kr\":\"우루과이\",\"br\":\"Uruguai\",\"pt\":\"Uruguai\",\"nl\":\"Uruguay\",\"hr\":\"Urugvaj\",\"fa\":\"اروگوئه\",\"de\":\"Uruguay\",\"es\":\"Uruguay\",\"fr\":\"Uruguay\",\"ja\":\"ウルグアイ\",\"it\":\"Uruguay\",\"cn\":\"乌拉圭\"}', '-33.00000000', '-56.00000000', '🇺🇾', 'U+1F1FA U+1F1FE', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q77'),
(236, 'Uzbekistan', 'UZB', '860', 'UZ', '998', 'Tashkent', 'UZS', 'лв', '.uz', 'O‘zbekiston', 'Asia', 'Central Asia', '[{\"zoneName\":\"Asia/Samarkand\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"UZT\",\"tzName\":\"Uzbekistan Time\"},{\"zoneName\":\"Asia/Tashkent\",\"gmtOffset\":18000,\"gmtOffsetName\":\"UTC+05:00\",\"abbreviation\":\"UZT\",\"tzName\":\"Uzbekistan Time\"}]', '{\"kr\":\"우즈베키스탄\",\"br\":\"Uzbequistão\",\"pt\":\"Usbequistão\",\"nl\":\"Oezbekistan\",\"hr\":\"Uzbekistan\",\"fa\":\"ازبکستان\",\"de\":\"Usbekistan\",\"es\":\"Uzbekistán\",\"fr\":\"Ouzbékistan\",\"ja\":\"ウズベキスタン\",\"it\":\"Uzbekistan\",\"cn\":\"乌兹别克斯坦\"}', '41.00000000', '64.00000000', '🇺🇿', 'U+1F1FA U+1F1FF', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q265'),
(237, 'Vanuatu', 'VUT', '548', 'VU', '678', 'Port Vila', 'VUV', 'VT', '.vu', 'Vanuatu', 'Oceania', 'Melanesia', '[{\"zoneName\":\"Pacific/Efate\",\"gmtOffset\":39600,\"gmtOffsetName\":\"UTC+11:00\",\"abbreviation\":\"VUT\",\"tzName\":\"Vanuatu Time\"}]', '{\"kr\":\"바누아투\",\"br\":\"Vanuatu\",\"pt\":\"Vanuatu\",\"nl\":\"Vanuatu\",\"hr\":\"Vanuatu\",\"fa\":\"وانواتو\",\"de\":\"Vanuatu\",\"es\":\"Vanuatu\",\"fr\":\"Vanuatu\",\"ja\":\"バヌアツ\",\"it\":\"Vanuatu\",\"cn\":\"瓦努阿图\"}', '-16.00000000', '167.00000000', '🇻🇺', 'U+1F1FB U+1F1FA', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q686'),
(238, 'Vatican City State (Holy See)', 'VAT', '336', 'VA', '379', 'Vatican City', 'EUR', '€', '.va', 'Vaticano', 'Europe', 'Southern Europe', '[{\"zoneName\":\"Europe/Vatican\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"바티칸 시국\",\"br\":\"Vaticano\",\"pt\":\"Vaticano\",\"nl\":\"Heilige Stoel\",\"hr\":\"Sveta Stolica\",\"fa\":\"سریر مقدس\",\"de\":\"Heiliger Stuhl\",\"es\":\"Santa Sede\",\"fr\":\"voir Saint\",\"ja\":\"聖座\",\"it\":\"Santa Sede\",\"cn\":\"梵蒂冈\"}', '41.90000000', '12.45000000', '🇻🇦', 'U+1F1FB U+1F1E6', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q237'),
(239, 'Venezuela', 'VEN', '862', 'VE', '58', 'Caracas', 'VEF', 'Bs', '.ve', 'Venezuela', 'Americas', 'South America', '[{\"zoneName\":\"America/Caracas\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"VET\",\"tzName\":\"Venezuelan Standard Time\"}]', '{\"kr\":\"베네수엘라\",\"br\":\"Venezuela\",\"pt\":\"Venezuela\",\"nl\":\"Venezuela\",\"hr\":\"Venezuela\",\"fa\":\"ونزوئلا\",\"de\":\"Venezuela\",\"es\":\"Venezuela\",\"fr\":\"Venezuela\",\"ja\":\"ベネズエラ・ボリバル共和国\",\"it\":\"Venezuela\",\"cn\":\"委内瑞拉\"}', '8.00000000', '-66.00000000', '🇻🇪', 'U+1F1FB U+1F1EA', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q717'),
(240, 'Vietnam', 'VNM', '704', 'VN', '84', 'Hanoi', 'VND', '₫', '.vn', 'Việt Nam', 'Asia', 'South-Eastern Asia', '[{\"zoneName\":\"Asia/Ho_Chi_Minh\",\"gmtOffset\":25200,\"gmtOffsetName\":\"UTC+07:00\",\"abbreviation\":\"ICT\",\"tzName\":\"Indochina Time\"}]', '{\"kr\":\"베트남\",\"br\":\"Vietnã\",\"pt\":\"Vietname\",\"nl\":\"Vietnam\",\"hr\":\"Vijetnam\",\"fa\":\"ویتنام\",\"de\":\"Vietnam\",\"es\":\"Vietnam\",\"fr\":\"Viêt Nam\",\"ja\":\"ベトナム\",\"it\":\"Vietnam\",\"cn\":\"越南\"}', '16.16666666', '107.83333333', '🇻🇳', 'U+1F1FB U+1F1F3', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q881'),
(241, 'Virgin Islands (British)', 'VGB', '092', 'VG', '1284', 'Road Town', 'USD', '$', '.vg', 'British Virgin Islands', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Tortola\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"영국령 버진아일랜드\",\"br\":\"Ilhas Virgens Britânicas\",\"pt\":\"Ilhas Virgens Britânicas\",\"nl\":\"Britse Maagdeneilanden\",\"hr\":\"Britanski Djevičanski Otoci\",\"fa\":\"جزایر ویرجین بریتانیا\",\"de\":\"Britische Jungferninseln\",\"es\":\"Islas Vírgenes del Reino Unido\",\"fr\":\"Îles Vierges britanniques\",\"ja\":\"イギリス領ヴァージン諸島\",\"it\":\"Isole Vergini Britanniche\",\"cn\":\"圣文森特和格林纳丁斯\"}', '18.43138300', '-64.62305000', '🇻🇬', 'U+1F1FB U+1F1EC', '2018-07-20 20:11:03', '2021-12-04 08:11:51', 1, NULL),
(242, 'Virgin Islands (US)', 'VIR', '850', 'VI', '1340', 'Charlotte Amalie', 'USD', '$', '.vi', 'United States Virgin Islands', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/St_Thomas\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"미국령 버진아일랜드\",\"br\":\"Ilhas Virgens Americanas\",\"pt\":\"Ilhas Virgens Americanas\",\"nl\":\"Verenigde Staten Maagdeneilanden\",\"fa\":\"جزایر ویرجین آمریکا\",\"de\":\"Amerikanische Jungferninseln\",\"es\":\"Islas Vírgenes de los Estados Unidos\",\"fr\":\"Îles Vierges des États-Unis\",\"ja\":\"アメリカ領ヴァージン諸島\",\"it\":\"Isole Vergini americane\",\"cn\":\"维尔京群岛（美国）\"}', '18.34000000', '-64.93000000', '🇻🇮', 'U+1F1FB U+1F1EE', '2018-07-20 20:11:03', '2021-12-04 08:11:40', 1, NULL),
(243, 'Wallis And Futuna Islands', 'WLF', '876', 'WF', '681', 'Mata Utu', 'XPF', '₣', '.wf', 'Wallis et Futuna', 'Oceania', 'Polynesia', '[{\"zoneName\":\"Pacific/Wallis\",\"gmtOffset\":43200,\"gmtOffsetName\":\"UTC+12:00\",\"abbreviation\":\"WFT\",\"tzName\":\"Wallis & Futuna Time\"}]', '{\"kr\":\"왈리스 푸투나\",\"br\":\"Wallis e Futuna\",\"pt\":\"Wallis e Futuna\",\"nl\":\"Wallis en Futuna\",\"hr\":\"Wallis i Fortuna\",\"fa\":\"والیس و فوتونا\",\"de\":\"Wallis und Futuna\",\"es\":\"Wallis y Futuna\",\"fr\":\"Wallis-et-Futuna\",\"ja\":\"ウォリス・フツナ\",\"it\":\"Wallis e Futuna\",\"cn\":\"瓦利斯群岛和富图纳群岛\"}', '-13.30000000', '-176.20000000', '🇼🇫', 'U+1F1FC U+1F1EB', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(244, 'Western Sahara', 'ESH', '732', 'EH', '212', 'El-Aaiun', 'MAD', 'MAD', '.eh', 'الصحراء الغربية', 'Africa', 'Northern Africa', '[{\"zoneName\":\"Africa/El_Aaiun\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"WEST\",\"tzName\":\"Western European Summer Time\"}]', '{\"kr\":\"서사하라\",\"br\":\"Saara Ocidental\",\"pt\":\"Saara Ocidental\",\"nl\":\"Westelijke Sahara\",\"hr\":\"Zapadna Sahara\",\"fa\":\"جمهوری دموکراتیک عربی صحرا\",\"de\":\"Westsahara\",\"es\":\"Sahara Occidental\",\"fr\":\"Sahara Occidental\",\"ja\":\"西サハラ\",\"it\":\"Sahara Occidentale\",\"cn\":\"西撒哈拉\"}', '24.50000000', '-13.00000000', '🇪🇭', 'U+1F1EA U+1F1ED', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, NULL),
(245, 'Yemen', 'YEM', '887', 'YE', '967', 'Sanaa', 'YER', '﷼', '.ye', 'اليَمَن', 'Asia', 'Western Asia', '[{\"zoneName\":\"Asia/Aden\",\"gmtOffset\":10800,\"gmtOffsetName\":\"UTC+03:00\",\"abbreviation\":\"AST\",\"tzName\":\"Arabia Standard Time\"}]', '{\"kr\":\"예멘\",\"br\":\"Iêmen\",\"pt\":\"Iémen\",\"nl\":\"Jemen\",\"hr\":\"Jemen\",\"fa\":\"یمن\",\"de\":\"Jemen\",\"es\":\"Yemen\",\"fr\":\"Yémen\",\"ja\":\"イエメン\",\"it\":\"Yemen\",\"cn\":\"也门\"}', '15.00000000', '48.00000000', '🇾🇪', 'U+1F1FE U+1F1EA', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q805'),
(246, 'Zambia', 'ZMB', '894', 'ZM', '260', 'Lusaka', 'ZMW', 'ZK', '.zm', 'Zambia', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Lusaka\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"잠비아\",\"br\":\"Zâmbia\",\"pt\":\"Zâmbia\",\"nl\":\"Zambia\",\"hr\":\"Zambija\",\"fa\":\"زامبیا\",\"de\":\"Sambia\",\"es\":\"Zambia\",\"fr\":\"Zambie\",\"ja\":\"ザンビア\",\"it\":\"Zambia\",\"cn\":\"赞比亚\"}', '-15.00000000', '30.00000000', '🇿🇲', 'U+1F1FF U+1F1F2', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q953'),
(247, 'Zimbabwe', 'ZWE', '716', 'ZW', '263', 'Harare', 'ZWL', '$', '.zw', 'Zimbabwe', 'Africa', 'Eastern Africa', '[{\"zoneName\":\"Africa/Harare\",\"gmtOffset\":7200,\"gmtOffsetName\":\"UTC+02:00\",\"abbreviation\":\"CAT\",\"tzName\":\"Central Africa Time\"}]', '{\"kr\":\"짐바브웨\",\"br\":\"Zimbabwe\",\"pt\":\"Zimbabué\",\"nl\":\"Zimbabwe\",\"hr\":\"Zimbabve\",\"fa\":\"زیمباوه\",\"de\":\"Simbabwe\",\"es\":\"Zimbabue\",\"fr\":\"Zimbabwe\",\"ja\":\"ジンバブエ\",\"it\":\"Zimbabwe\",\"cn\":\"津巴布韦\"}', '-20.00000000', '30.00000000', '🇿🇼', 'U+1F1FF U+1F1FC', '2018-07-20 20:11:03', '2021-08-01 14:37:27', 1, 'Q954'),
(248, 'Kosovo', 'XKX', '926', 'XK', '383', 'Pristina', 'EUR', '€', '.xk', 'Republika e Kosovës', 'Europe', 'Eastern Europe', '[{\"zoneName\":\"Europe/Belgrade\",\"gmtOffset\":3600,\"gmtOffsetName\":\"UTC+01:00\",\"abbreviation\":\"CET\",\"tzName\":\"Central European Time\"}]', '{\"kr\":\"코소보\",\"cn\":\"科索沃\"}', '42.56129090', '20.34030350', '🇽🇰', 'U+1F1FD U+1F1F0', '2020-08-15 15:33:50', '2021-08-01 14:37:57', 1, 'Q1246'),
(249, 'Curaçao', 'CUW', '531', 'CW', '599', 'Willemstad', 'ANG', 'ƒ', '.cw', 'Curaçao', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Curacao\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"퀴라소\",\"br\":\"Curaçao\",\"pt\":\"Curaçao\",\"nl\":\"Curaçao\",\"fa\":\"کوراسائو\",\"de\":\"Curaçao\",\"fr\":\"Curaçao\",\"it\":\"Curaçao\",\"cn\":\"库拉索\"}', '12.11666700', '-68.93333300', '🇨🇼', 'U+1F1E8 U+1F1FC', '2020-10-25 14:54:20', '2021-08-01 14:37:27', 1, 'Q25279'),
(250, 'Sint Maarten (Dutch part)', 'SXM', '534', 'SX', '1721', 'Philipsburg', 'ANG', 'ƒ', '.sx', 'Sint Maarten', 'Americas', 'Caribbean', '[{\"zoneName\":\"America/Anguilla\",\"gmtOffset\":-14400,\"gmtOffsetName\":\"UTC-04:00\",\"abbreviation\":\"AST\",\"tzName\":\"Atlantic Standard Time\"}]', '{\"kr\":\"신트마르턴\",\"br\":\"Sint Maarten\",\"pt\":\"São Martinho\",\"nl\":\"Sint Maarten\",\"fa\":\"سینت مارتن\",\"de\":\"Sint Maarten (niederl. Teil)\",\"fr\":\"Saint Martin (partie néerlandaise)\",\"it\":\"Saint Martin (parte olandese)\",\"cn\":\"圣马丁岛（荷兰部分）\"}', '18.03333300', '-63.05000000', '🇸🇽', 'U+1F1F8 U+1F1FD', '2020-12-05 13:03:39', '2021-08-01 14:37:27', 1, 'Q26273');

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `id` bigint(20) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `code` text NOT NULL,
  `newuser` int(11) NOT NULL,
  `usage_no` int(20) DEFAULT 0,
  `expire` datetime NOT NULL,
  `package` text NOT NULL,
  `credit` int(11) NOT NULL,
  `type` bigint(11) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `code` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso2` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` decimal(12,2) NOT NULL DEFAULT 0.00,
  `status` int(2) NOT NULL DEFAULT 0,
  `updatetime` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `code`, `iso2`, `symbol`, `rate`, `status`, `updatetime`) VALUES
(1, 'USD', 'US', '$', '0.16', 1, 1646352001),
(2, 'GBP', 'GB', '£', '0.12', 1, 1646352001),
(3, 'SGD', 'SG', '$', '0.22', 1, 1646352001),
(4, 'JPY', 'JP', '¥', '18.29', 1, 1646352001),
(5, 'CNY', 'CN', '¥', '1.00', 1, 1646352001),
(6, 'CAD', 'CA', '$', '0.20', 1, 1646352001),
(7, 'HKD', 'HK', '$', '1.24', 1, 1646352001),
(8, 'INR', 'IN', '₹', '11.99', 1, 1646352001),
(9, 'RUB', 'RU', '₽', '17.72', 1, 1646352001),
(10, 'TWD', 'TW', '$', '4.43', 1, 1646352001),
(11, 'GHS', 'GH', 'GH₵', '1.19', 1, 1646352001);

-- --------------------------------------------------------

--
-- Table structure for table `email_verify`
--

CREATE TABLE `email_verify` (
  `id` bigint(20) NOT NULL,
  `email` text NOT NULL,
  `ip` text NOT NULL,
  `code` text NOT NULL,
  `expire_in` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `question` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `link`
--
CREATE TABLE `iplist` (
  `id` bigint(20) NOT NULL,
  `nodeid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `ip` text NOT NULL,
  `datetime` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `link` (
  `id` bigint(20) NOT NULL,
  `type` int(11) NOT NULL,
  `address` text NOT NULL,
  `port` int(11) NOT NULL,
  `token` text NOT NULL,
  `ios` int(11) NOT NULL DEFAULT 0,
  `userid` bigint(20) NOT NULL,
  `isp` text DEFAULT NULL,
  `geo` int(11) DEFAULT NULL,
  `method` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `link`
--

INSERT INTO `link` (`id`, `type`, `address`, `port`, `token`, `ios`, `userid`, `isp`, `geo`, `method`) VALUES
(1, 11, '', 0, 'mx4xr0DtyTNTaCQ2', 0, 1, NULL, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `login_ip`
--

CREATE TABLE `login_ip` (
  `id` bigint(20) NOT NULL,
  `userid` bigint(20) NOT NULL,
  `username` varchar(250) DEFAULT NULL,
  `ip` text NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `type` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `content` longtext NOT NULL,
  `content_cn` longtext DEFAULT NULL,
  `markdown` longtext NOT NULL,
  `markdown_cn` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `close_date` bigint(20) DEFAULT NULL,
  `create_date` bigint(20) DEFAULT NULL,
  `order_id` varchar(250) NOT NULL,
  `pay_date` bigint(20) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `really_price` decimal(12,2) DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL,
  `userid` bigint(20) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `total` decimal(12,2) DEFAULT NULL,
  `packagetype` varchar(2) DEFAULT NULL,
  `packageid` bigint(10) DEFAULT NULL,
  `packagexp` bigint(10) DEFAULT NULL,
  `coupon` text DEFAULT NULL,
  `discount` decimal(12,2) DEFAULT NULL,
  `exp` bigint(20) DEFAULT NULL,
  `expdate` text DEFAULT NULL,
  `exrate` decimal(12,2) NOT NULL,
  `pay_url`  LONGTEXT  NULL DEFAULT NULL,
  `renew` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` bigint(20) NOT NULL,
  `type` varchar(25) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `cn_name` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `bandwidth` text NOT NULL,
  `buy_count` varchar(11) NOT NULL DEFAULT '0',
  `custom` varchar(500) NOT NULL DEFAULT '{"expire":"30","price":0,"status":0}',
  `monthly` varchar(500) NOT NULL DEFAULT '{"expire":"30","price":0,"status":0}',
  `quaterly` varchar(500) NOT NULL DEFAULT '{"expire":"90","price":0,"status":0}',
  `semiannually` varchar(500) NOT NULL DEFAULT '{"expire":"180","price":0,"status":0}',
  `annually` varchar(500) NOT NULL DEFAULT '{"expire":"360","price":0,"status":0}',
  `reset_renew` tinyint(1) NOT NULL DEFAULT 0,
  `renew_type` tinyint(1) NOT NULL DEFAULT 1,
  `renew_traffic_type` tinyint(1) NOT NULL DEFAULT 1,
  `reset_every_days` int(10) NOT NULL DEFAULT 30,
  `connector` int(5) NOT NULL DEFAULT 2,
  `speedlimit` int(10) NOT NULL DEFAULT 0,
  `group` int(5) NOT NULL DEFAULT 1,
  `level` int(5) NOT NULL DEFAULT 0,
  `note` longtext DEFAULT NULL,
  `topup_price` decimal(12,2) NOT NULL DEFAULT 0.00,
  `sort` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset`
--

CREATE TABLE `password_reset` (
  `id` int(11) NOT NULL,
  `email` varchar(32) NOT NULL,
  `token` varchar(128) NOT NULL,
  `init_time` int(11) NOT NULL,
  `expire_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payout`
--

CREATE TABLE `payout` (
  `id` int(12) NOT NULL,
  `userid` int(12) NOT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `account` varchar(120) CHARACTER SET utf8mb4 DEFAULT NULL,
  `method` int(5) NOT NULL DEFAULT 1,
  `status` int(11) DEFAULT NULL,
  `datetime` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rule_list`
--

CREATE TABLE `rule_list` (
  `id` int(11) NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `regex` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rule_list`
--

INSERT INTO `rule_list` (`id`, `name`, `regex`, `type`) VALUES
(1, '360-1', '(.*\\.||)(360|360safe|so|360totalsecurity|qihoo|qhimg)\\.(cn|com)', 1),
(2, 'Spam-1', '(^.*@)(guerrillamail|guerrillamailblock|sharklasers|grr|pokemail|spam4|bccto|chacuo|027168).(info|biz|com|de|net|org|me|la)', 1),
(3, 'Spam-2', '(Subject|HELO|SMTP)', 1),
(4, 'Thunder', '(.?)(xunlei|sandai|Thunder|XLLiveUD)(.)', 1),
(5, 'BitTorrent', 'BitTorrent protocol', 1),
(6, 'BT', '(torrent|.torrent|peer_id=|info_hash|get_peers|find_node|BitTorrent|announce_peer|announce.php?passkey=)', 1),
(7, '360-2', '(.+.|^)(360|so).(cn|com)', 1),
(8, 'Baidu-Nav', '(api|ps|sv|offnavi|newvector|ulog.imap|newloc)(.map|).(baidu|n.shifen).com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rule_log`
--

CREATE TABLE `rule_log` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `username` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `list_id` bigint(20) NOT NULL,
  `datetime` bigint(20) NOT NULL,
  `server_id` int(11) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `servers`
--

CREATE TABLE `servers` (
  `id` int(11) NOT NULL,
  `emoji` tinyint(1) NOT NULL DEFAULT 1,
  `name` varchar(128) CHARACTER SET utf8mb4 NOT NULL,
  `type` int(3) NOT NULL,
  `server` varchar(300) CHARACTER SET utf8mb4 NOT NULL,
  `rserver` varchar(300) CHARACTER SET utf8mb4 DEFAULT NULL,
  `headertype` text CHARACTER SET utf8mb4 NOT NULL,
  `port` int(10) NOT NULL DEFAULT 443,
  `outside_port` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `protocol` text CHARACTER SET utf8mb4 NOT NULL,
  `flow` text CHARACTER SET utf8mb4 NOT NULL,
  `security` varchar(5) CHARACTER SET utf8mb4 NOT NULL DEFAULT 'tls',
  `xhost` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `xpath` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `info` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `rate` float NOT NULL DEFAULT 1,
  `level` int(11) NOT NULL DEFAULT 0,
  `speedlimit` int(20) NOT NULL DEFAULT 0,
  `sni` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `bandwidth` bigint(20) NOT NULL DEFAULT 0,
  `bandwidth_limit` bigint(20) NOT NULL DEFAULT 0,
  `bandwidthlimit_resetday` int(5) NOT NULL DEFAULT 0,
  `heartbeat` bigint(20) NOT NULL DEFAULT 0,
  `node_ip` longtext CHARACTER SET utf8mb4 NOT NULL,
  `group` int(11) NOT NULL DEFAULT 0,
  `online` tinyint(1) NOT NULL DEFAULT 1,
  `sort` int(3) NOT NULL DEFAULT 0,
  `method` varchar(50) CHARACTER SET utf8mb4 NOT NULL DEFAULT 'aes-128-gcm',
  `mu_only` int(2) NOT NULL DEFAULT 1,
  `allowinsecure` tinyint(2) NOT NULL DEFAULT 0,
  `cloudflare` tinyint(1) NOT NULL DEFAULT 0,
  `cloudflare_cdn` tinyint(1) NOT NULL DEFAULT 0,
  `relay` int(2) NOT NULL DEFAULT 0,
  `relayid` int(2) NOT NULL DEFAULT 0,
  `listenip` varchar(15) CHARACTER SET utf8mb4 NOT NULL DEFAULT '0.0.0.0',
  `sniffing` int(2) NOT NULL DEFAULT 1,
  `proxy_protocol` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `servers`
--

INSERT INTO `servers` (`id`, `emoji`, `name`, `type`, `server`, `rserver`, `headertype`, `port`, `outside_port`, `protocol`, `flow`, `security`, `xhost`, `xpath`, `info`, `status`, `rate`, `level`, `speedlimit`, `sni`, `bandwidth`, `bandwidth_limit`, `bandwidthlimit_resetday`, `heartbeat`, `node_ip`, `group`, `online`, `sort`, `method`, `mu_only`, `allowinsecure`, `cloudflare`, `cloudflare_cdn`, `relay`, `relayid`, `listenip`, `sniffing`, `proxy_protocol`) VALUES
(1, 1, 'Expired/过期', 0, '127.0.0.1', NULL, '', 443, '', '', '', 'tls', '', '', 'GB', NULL, 0, -1, 0, '0', 0, 0, 0, 0, '127.0.0.1', 0, 0, 1, 'aes-128-gcm', 1, 0, 0, 0, 0, 0, '0.0.0.0', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `server_info`
--

CREATE TABLE `server_info` (
  `id` int(11) NOT NULL,
  `node_id` int(11) NOT NULL,
  `uptime` float NOT NULL,
  `load` varchar(32) NOT NULL,
  `log_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `server_online_log`
--

CREATE TABLE `server_online_log` (
  `id` int(11) NOT NULL,
  `node_id` int(11) NOT NULL,
  `online_user` int(11) NOT NULL,
  `log_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `setup`
--

CREATE TABLE `setup` (
  `id` int(25) NOT NULL,
  `title` text DEFAULT NULL,
  `type` varchar(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `content_cn` text DEFAULT NULL,
  `datetime` bigint(25) DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `url` text DEFAULT NULL,
  `link` text DEFAULT NULL,
  `icon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setup`
--

INSERT INTO `setup` (`id`, `title`, `type`, `content`, `content_cn`, `datetime`, `status`, `url`, `link`, `icon`) VALUES
(1, 'Clash', '1', '<center><video id=\"0\" controls=\"controls\" width=\"800\" height=\"380\">\n<source src=\"/uploads/and/clash.mp4\" type=\"video/mp4\" />\n<source src=\"/uploads/and/clash.ogv\" type=\"video/ogg; codecs=\" theora=\"\" vorbis=\"\" />\n<source src=\"/uploads/and/clash.webm\" type=\"video/webm\" /></video></center>', '<center><video id=\"0\" controls=\"controls\" width=\"800\" height=\"380\">\n<source src=\"/uploads/and/clash.mp4\" type=\"video/mp4\" />\n<source src=\"/uploads/and/clash.ogv\" type=\"video/ogg; codecs=\" theora=\"\" vorbis=\"\" />\n<source src=\"/uploads/and/clash.webm\" type=\"video/webm\" /></video></center>', 1645118767, 1, '/download/Clash.apk', 'config=clash', 'xmanager xmanager-clash'),
(2, 'AnXray', '1', '', NULL, 1627221354, 0, 'https://github.com/XTLS/AnXray/releases', 'anxray=1', 'icomoon icomoon-anxray'),
(3, 'V2rayNG', '1', '<center><video id=\"0\" controls=\"controls\" width=\"800\" height=\"380\">\n<source src=\"/uploads/and/v2rayng.mp4\" type=\"video/mp4\" />\n<source src=\"/uploads/and/v2rayng.ogv\" type=\"video/ogg; codecs=\" theora=\"\" vorbis=\"\" />\n<source src=\"/uploads/and/v2rayng.webm\" type=\"video/webm\" /></video></center>', '<center><video id=\"0\" controls=\"controls\" width=\"800\" height=\"380\">\n<source src=\"/uploads/and/v2rayng.mp4\" type=\"video/mp4\" />\n<source src=\"/uploads/and/v2rayng.ogv\" type=\"video/ogg; codecs=\" theora=\"\" vorbis=\"\" />\n<source src=\"/uploads/and/v2rayng.webm\" type=\"video/webm\" /></video></center>', 1640722629, 1, '/download/V2rayNG.apk', 'config=v2rayng', 'icomoon icomoon-v2rayng-new'),
(4, 'Surfboard', '1', '<center><video id=\"0\" controls=\"controls\" width=\"800\" height=\"380\">\n<source src=\"/uploads/and/surfboard.mp4\" type=\"video/mp4\" />\n<source src=\"/uploads/and/surfboard.ogv\" type=\"video/ogg; codecs=\" theora=\"\" vorbis=\"\" />\n<source src=\"/uploads/and/surfboard.webm\" type=\"video/webm\" /></video></center>', '<center><video id=\"0\" controls=\"controls\" width=\"800\" height=\"380\">\n<source src=\"/uploads/and/surfboard.mp4\" type=\"video/mp4\" />\n<source src=\"/uploads/and/surfboard.ogv\" type=\"video/ogg; codecs=\" theora=\"\" vorbis=\"\" />\n<source src=\"/uploads/and/surfboard.webm\" type=\"video/webm\" /></video></center>', 1644508754, 1, '/download/Surfboard.apk', 'surfboard=1', 'xmanager xmanager-surfboard'),
(5, 'ClashFW x64', '3', '<center><video id=\"0\" controls=\"controls\" width=\"800\" height=\"380\">\n<source src=\"/uploads/win/clash.mp4\" type=\"video/mp4\" />\n<source src=\"/uploads/win/clash.ogv\" type=\"video/ogg; codecs=\" theora=\"\" vorbis=\"\" />\n<source src=\"/uploads/win/clash.webm\" type=\"video/webm\" /></video></center>', '<center><video id=\"0\" controls=\"controls\" width=\"800\" height=\"380\">\n<source src=\"/uploads/win/clash.mp4\" type=\"video/mp4\" />\n<source src=\"/uploads/win/clash.ogv\" type=\"video/ogg; codecs=\" theora=\"\" vorbis=\"\" />\n<source src=\"/uploads/win/clash.webm\" type=\"video/webm\" /></video></center>', 1645118722, 1, '/download/Clashx64.exe', 'config=clash', 'xmanager xmanager-clash'),
(6, 'ClashFW x86', '3', '<center><video id=\"0\" controls=\"controls\" width=\"800\" height=\"380\">\n<source src=\"/uploads/win/clash.mp4\" type=\"video/mp4\" />\n<source src=\"/uploads/win/clash.ogv\" type=\"video/ogg; codecs=\" theora=\"\" vorbis=\"\" />\n<source src=\"/uploads/win/clash.webm\" type=\"video/webm\" /></video></center>', '<center><video id=\"0\" controls=\"controls\" width=\"800\" height=\"380\">\n<source src=\"/uploads/win/clash.mp4\" type=\"video/mp4\" />\n<source src=\"/uploads/win/clash.ogv\" type=\"video/ogg; codecs=\" theora=\"\" vorbis=\"\" />\n<source src=\"/uploads/win/clash.webm\" type=\"video/webm\" /></video></center>', 1645118737, 1, '/download/Clashx86.exe', 'clash=1', 'xmanager xmanager-clash'),
(7, 'V2rayN', '3', '', '', 1644568526, 1, '/download/V2rayN.zip', 'config=1', 'icomoon icomoon-v2rayn'),
(8, NULL, '3', NULL, NULL, NULL, 0, NULL, NULL, ''),
(9, 'Shadowrocket', '2', NULL, NULL, 1641151871, 1, 'https://itunes.apple.com/us/app/shadowrocket/id932747118?mt=8', 'config=shadowrocket', 'xmanager xmanager-shadowrocket'),
(10, 'QuantumultX', '2', NULL, NULL, 0, 1, 'https://apps.apple.com/us/app/quantumult-x/id1443988620', 'config=1', 'xmanager xmanager-quantumultx'),
(11, NULL, '2', NULL, NULL, NULL, 0, NULL, NULL, ''),
(12, NULL, '2', NULL, NULL, NULL, 0, NULL, NULL, ''),
(13, 'ClashX', '4', '<center><video id=\"0\" controls=\"controls\" width=\"800\" height=\"380\">\n<source src=\"/uploads/mac/clashx.mp4\" type=\"video/mp4\" />\n<source src=\"/uploads/mac/clashx.ogv\" type=\"video/ogg; codecs=\" theora=\"\" vorbis=\"\" />\n<source src=\"/uploads/mac/clashx.webm\" type=\"video/webm\" /></video></center>', '<center><video id=\"0\" controls=\"controls\" width=\"800\" height=\"380\">\n<source src=\"/uploads/mac/clashx.mp4\" type=\"video/mp4\" />\n<source src=\"/uploads/mac/clashx.ogv\" type=\"video/ogg; codecs=\" theora=\"\" vorbis=\"\" />\n<source src=\"/uploads/mac/clashx.webm\" type=\"video/webm\" /></video></center>', 1641151912, 1, '/download/ClashX.dmg', 'config=clash', 'xmanager xmanager-clash'),
(14, 'ClashFW(Mac)', '4', '<center><video id=\"0\" controls=\"controls\" width=\"800\" height=\"380\">\n<source src=\"/uploads/mac/clash.mp4\" type=\"video/mp4\" />\n<source src=\"/uploads/mac/clash.ogv\" type=\"video/ogg; codecs=\" theora=\"\" vorbis=\"\" />\n<source src=\"/uploads/mac/clash.webm\" type=\"video/webm\" /></video></center>', '<center><video id=\"0\" controls=\"controls\" width=\"800\" height=\"380\">\n<source src=\"/uploads/mac/clash.mp4\" type=\"video/mp4\" />\n<source src=\"/uploads/mac/clash.ogv\" type=\"video/ogg; codecs=\" theora=\"\" vorbis=\"\" />\n<source src=\"/uploads/mac/clash.webm\" type=\"video/webm\" /></video></center>', 1645118785, 1, '/download/Clash.dmg', 'config=clash', 'xmanager xmanager-clash'),
(15, NULL, '4', NULL, NULL, NULL, 0, NULL, NULL, ''),
(16, NULL, '4', NULL, NULL, NULL, 0, NULL, NULL, ''),
(17, 'ClashFW(Linux)', '5', '<center><video id=\"0\" controls=\"controls\" width=\"800\" height=\"380\">\n<source src=\"/uploads/linux/clash.mp4\" type=\"video/mp4\" />\n<source src=\"/uploads/linux/clash.ogv\" type=\"video/ogg; codecs=\" theora=\"\" vorbis=\"\" />\n<source src=\"/uploads/linux/clash.webm\" type=\"video/webm\" /></video></center>', '<center><video id=\"0\" controls=\"controls\" width=\"800\" height=\"380\">\n<source src=\"/uploads/linux/clash.mp4\" type=\"video/mp4\" />\n<source src=\"/uploads/linux/clash.ogv\" type=\"video/ogg; codecs=\" theora=\"\" vorbis=\"\" />\n<source src=\"/uploads/linux/clash.webm\" type=\"video/webm\" /></video></center>', 1645118802, 1, '/download/Clash.tar.gz', 'config=clash', 'xmanager xmanager-clash'),
(18, 'QV2ray', '5', '', '', 1641151959, 0, '/download/Clash.tar.gz', 'config=clash', 'icomoon icomoon-qv2ray'),
(19, NULL, '5', NULL, NULL, NULL, 0, NULL, NULL, ''),
(20, NULL, '5', NULL, NULL, NULL, 0, NULL, NULL, ''),
(21, 'XClient', '6', '', '', 1646327018, 1, 'https://github.com/xcode75/luci-app-xclient/releases', 'xclient=1', 'fad fa-paper-plane'),
(22, 'Openclash', '6', '', '', 1646327071, 1, 'https://github.com/vernesong/OpenClash/releases', 'clash=1', 'xmanager  xmanager-clash'),
(23, NULL, '6', NULL, NULL, NULL, 0, NULL, NULL, ''),
(24, NULL, '6', NULL, NULL, NULL, 0, NULL, NULL, ''),
(25, 'TeamViewer (Windows)', '7', '', NULL, 1627226060, 0, 'https://dl.tvcdn.de/download/TeamViewer_Setup.exe', '', 'icomoon icomoon-teamviewer'),
(26, 'TeamViewer (Mac)', '7', '', '', 1628349861, 0, 'https://download.teamviewer.com/download/TeamViewer.dmg', '', 'icomoon icomoon-teamviewer'),
(27, NULL, '7', NULL, NULL, NULL, 0, NULL, NULL, ''),
(28, NULL, '7', NULL, NULL, NULL, 0, NULL, NULL, ''),
(29, NULL, '8', NULL, NULL, NULL, 0, NULL, NULL, ''),
(30, NULL, '8', NULL, NULL, NULL, 0, NULL, NULL, ''),
(31, NULL, '8', NULL, NULL, NULL, 0, NULL, NULL, ''),
(32, NULL, '8', NULL, NULL, NULL, 0, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `telegram_session`
--

CREATE TABLE `telegram_session` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `session_content` text DEFAULT NULL,
  `datetime` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `temp_order`
--

CREATE TABLE `temp_order` (
  `id` int(11) NOT NULL,
  `total` decimal(12,2) DEFAULT NULL,
  `price` decimal(12,2) NOT NULL,
  `order_id` varchar(250) NOT NULL,
  `create_date` bigint(20) NOT NULL,
  `coupon` varchar(20)  DEFAULT NULL,
  `packageid` int(5) NOT NULL,
  `packagetype` int(2) NOT NULL,
  `packagexp` varchar(5) NOT NULL,
  `userid` int(11) NOT NULL,
  `paymethod` int(11) NOT NULL,
  `expdate` int(50) DEFAULT 0,
  `exrate` decimal(12,2) DEFAULT NULL,
  `renew` int(5) DEFAULT NULL,
  `discount` decimal(12,2) DEFAULT NULL,
  `wallet` varchar(250) DEFAULT NULL,
  `extra` decimal(12,2) NULL DEFAULT '0.00',
  `exp` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `pay_url` longtext  DEFAULT NULL,
  `notify_url` longtext  DEFAULT NULL,
  `return_url` longtext  DEFAULT NULL,
  `pay_qrcode` longtext  DEFAULT NULL,
  `deeplink` longtext  DEFAULT NULL,
  `status` int(5) NOT NULL DEFAULT -1,
  `pay_id` longtext  DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_price`
--

CREATE TABLE `tmp_price` (
  `price` varchar(255) NOT NULL,
  `oid` varchar(255) NOT NULL,
  `uid` int(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_name` varchar(128) NOT NULL,
  `email` varchar(150) NOT NULL,
  `pass` varchar(256) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL DEFAULT 'aes-128-gcm',
  `uuid` text DEFAULT NULL COMMENT 'uuid',
  `t` int(11) NOT NULL DEFAULT 0,
  `u` bigint(20) NOT NULL,
  `d` bigint(20) NOT NULL,
  `transfer_enable` bigint(20) NOT NULL,
  `enable` tinyint(4) NOT NULL DEFAULT 1,
  `reg_date` datetime NOT NULL,
  `money` decimal(12,2) NOT NULL DEFAULT '0.00',
  `expire_time` int(20) NOT NULL DEFAULT 0,
  `reg_ip` varchar(128) NOT NULL DEFAULT '127.0.0.1',
  `speedlimit` int(20) NOT NULL DEFAULT 0,
  `connector` int(11) NOT NULL DEFAULT 0,
  `role` int(2) NOT NULL DEFAULT 0,
  `last_day_t` bigint(20) NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 0,
  `expire_in` datetime NOT NULL DEFAULT '2099-06-04 00:05:00',
  `remark` text DEFAULT NULL,
  `group` int(11) NOT NULL DEFAULT 0,
  `reset_day` int(11) NOT NULL DEFAULT 0,
  `reset_bandwidth` decimal(12,2) NOT NULL DEFAULT 0.00,
  `telegram_id` bigint(20) DEFAULT NULL,
  `telegram_name` varchar(25) DEFAULT NULL,
  `expire_notified` tinyint(1) NOT NULL DEFAULT 0,
  `expire_notified_days` tinyint(1) NOT NULL DEFAULT 0,
  `traffic_notified` tinyint(1) NOT NULL DEFAULT 0,
  `traffic_notified_limit` tinyint(1) NOT NULL DEFAULT 0,
  `afflink` varchar(25) DEFAULT NULL,
  `verify` INT(3) NOT NULL DEFAULT '0',
  `notify_expire` int(2) NOT NULL DEFAULT 1,
  `notify_usedup` int(2) NOT NULL DEFAULT 1,
  `ref_by` int(11) NULL DEFAULT 0,
  `notice_status` int(10) NOT NULL DEFAULT 0,
  `notice_id` text DEFAULT NULL,
  `affclicks` int(20) NOT NULL DEFAULT 0,
  `ga_token` varchar(200) NOT NULL,
  `ga_enable` int(5) NOT NULL DEFAULT 0,
  `aff_completed` decimal(12,2) NOT NULL DEFAULT 0.00,
  `aff_pending` decimal(12,2) NOT NULL DEFAULT 0.00,
  `aff_balance` decimal(12,2) NOT NULL DEFAULT 0.00,
  `aff_account` varchar(50) DEFAULT NULL,
  `aff_with_mode` int(2) NOT NULL DEFAULT 1,
  `currency` varchar(5) NOT NULL DEFAULT '',
  `lang` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_subscribe_log`
--

CREATE TABLE `user_subscribe_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscribe_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_ip` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_time` datetime NOT NULL,
  `request_user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `token` varchar(256) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `expire_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_traffic_log`
--

CREATE TABLE `user_traffic_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(250) DEFAULT NULL,
  `u` bigint(20) NOT NULL,
  `d` bigint(20) NOT NULL,
  `node_id` int(11) NOT NULL,
  `rate` float NOT NULL,
  `traffic` varchar(32) NOT NULL,
  `log_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `alive_ip`
--
ALTER TABLE `alive_ip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `cloudflare`
--
ALTER TABLE `cloudflare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commission`
--
ALTER TABLE `commission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_verify`
--
ALTER TABLE `email_verify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `login_ip`
--
ALTER TABLE `login_ip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset`
--
ALTER TABLE `password_reset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout`
--
ALTER TABLE `payout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rule_list`
--
ALTER TABLE `rule_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rule_log`
--
ALTER TABLE `rule_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servers`
--
ALTER TABLE `servers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `server_info`
--
ALTER TABLE `server_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_online_log`
--
ALTER TABLE `server_online_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setup`
--
ALTER TABLE `setup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `telegram_session`
--
ALTER TABLE `telegram_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_order`
--
ALTER TABLE `temp_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tmp_price`
--
ALTER TABLE `tmp_price`
  ADD PRIMARY KEY (`price`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_subscribe_log`
--
ALTER TABLE `user_subscribe_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_traffic_log`
--
ALTER TABLE `user_traffic_log`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `iplist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `alive_ip`
--
ALTER TABLE `alive_ip`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cloudflare`
--
ALTER TABLE `cloudflare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commission`
--
ALTER TABLE `commission`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `email_verify`
--
ALTER TABLE `email_verify`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `login_ip`
--
ALTER TABLE `login_ip`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_reset`
--
ALTER TABLE `password_reset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payout`
--
ALTER TABLE `payout`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rule_list`
--
ALTER TABLE `rule_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `rule_log`
--
ALTER TABLE `rule_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `servers`
--
ALTER TABLE `servers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `server_info`
--
ALTER TABLE `server_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `server_online_log`
--
ALTER TABLE `server_online_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setup`
--
ALTER TABLE `setup`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `telegram_session`
--
ALTER TABLE `telegram_session`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_order`
--
ALTER TABLE `temp_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_subscribe_log`
--
ALTER TABLE `user_subscribe_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_traffic_log`
--
ALTER TABLE `user_traffic_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `iplist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
  
CREATE TABLE `templates` (
  `id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `content` longtext NOT NULL,
  `datetime` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `templates` (`id`, `title`, `content`, `datetime`) VALUES
(1, 'Traffic - 流量状况', '<table class=\"body-wrap mce-item-table\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; background-color: #f6f6f6; margin: 0;\" bgcolor=\"#f6f6f6\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; background-color: #f6f6f6; margin: 0;\"><tbody><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\"><br></td><td class=\"container\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; display: block !important; max-width: 600px !important; clear: both !important; margin: 0 auto;\" valign=\"top\" width=\"600\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; display: block !important; max-width: 600px !important; clear: both !important; margin: 0 auto;\"><div class=\"content\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; max-width: 600px; display: block; margin: 0 auto; padding: 20px;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; max-width: 600px; display: block; margin: 0 auto; padding: 20px;\"><table class=\"main mce-item-table\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; border-radius: 3px; background-color: #fff; margin: 0; border: 1px solid #e9e9e9;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#fff\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; border-radius: 3px; background-color: #fff; margin: 0; border: 1px solid #e9e9e9;\"><tbody><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td class=\"\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 16px; vertical-align: top; color: #fff; font-weight: 500; text-align: center; border-radius: 3px 3px 0 0; background-color: %app_color%; margin: 0; padding: 20px;\" align=\"center\" valign=\"top\" bgcolor=\"#71b6f9\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 16px; vertical-align: top; color: #fff; font-weight: 500; text-align: center; border-radius: 3px 3px 0 0; background-color: %app_color%; margin: 0; padding: 20px;\"><span style=\"margin-top: 10px; display: block;\" data-mce-style=\"margin-top: 10px; display: block;\"> %TrafficMessage%</span></td></tr><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td class=\"content-block aligncenter\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: center; margin: 0; padding: 0 0 20px;\" align=\"center\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: center; margin: 0; padding: 0 0 20px;\"><table class=\"invoice mce-item-table\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; text-align: left; width: 80%; margin: 40px auto;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; text-align: left; width: 80%; margin: 40px auto;\"><tbody><tr style=\"width: 100%; font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"width: 100%; font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;\"><center><span style=\"font-size: 17px;\" data-mce-style=\"font-size: 17px;\">%Lang_traffic2%</span><br><br></center></td></tr><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;\"><table class=\"invoice-items mce-item-table\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; margin: 0;\" cellspacing=\"0\" cellpadding=\"0\"><tbody><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td style=\"width: 66.4549%; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top: 1px solid rgb(238, 238, 238); margin: 0px; padding: 5px 0px;\" valign=\"top\">%Lang_ToTraffic%</td><td class=\"alignright\" style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top: 1px solid rgb(238, 238, 238); margin: 0px; padding: 5px 0px; width: 33.4873%;\" align=\"right\" valign=\"top\">%ToTraffic%</td></tr><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td style=\"width: 66.4549%; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top: 1px solid rgb(238, 238, 238); margin: 0px; padding: 5px 0px;\" valign=\"top\">%Lang_UTraffic%</td><td class=\"alignright\" style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top: 1px solid rgb(238, 238, 238); margin: 0px; padding: 5px 0px; width: 33.4873%;\" align=\"right\" valign=\"top\">%UsedT%</td></tr><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td style=\"width: 66.4549%; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top: 1px solid rgb(238, 238, 238); margin: 0px; padding: 5px 0px;\" valign=\"top\">%Lang_PExpire%</td><td style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top: 1px solid rgb(238, 238, 238); margin: 0px; padding: 5px 0px; width: 33.4873%;\" valign=\"top\">%PExpire%</td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table><div class=\"footer\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; clear: both; color: #999; margin: 0; padding: 20px;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; clear: both; color: #999; margin: 0; padding: 20px;\"><table style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" width=\"100%\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" class=\"mce-item-table\"><tbody><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td class=\"aligncenter content-block\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 12px; vertical-align: top; color: #999; text-align: center; margin: 0; padding: 0 0 20px;\" align=\"center\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 12px; vertical-align: top; color: #999; text-align: center; margin: 0; padding: 0 0 20px;\"><a style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 12px; color: #999; text-decoration: underline; margin: 0;\" href=\"/%baseUrl%\" data-mce-href=\"/%baseUrl%\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 12px; color: #999; text-decoration: underline; margin: 0;\">%appName%</a></td></tr></tbody></table></div></div></td><td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\"><br></td></tr></tbody></table>', 1652101990),
(2, 'Verification - 验证 ', '<table class=\"body-wrap mce-item-table\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; background-color: #f6f6f6; margin: 0;\" bgcolor=\"#f6f6f6\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; background-color: #f6f6f6; margin: 0;\"><tbody><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\"><br></td><td class=\"container\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; display: block !important; max-width: 600px !important; clear: both !important; margin: 0 auto;\" valign=\"top\" width=\"600\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; display: block !important; max-width: 600px !important; clear: both !important; margin: 0 auto;\"><div class=\"content\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; max-width: 600px; display: block; margin: 0 auto; padding: 20px;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; max-width: 600px; display: block; margin: 0 auto; padding: 20px;\"><table class=\"main mce-item-table\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; border-radius: 3px; background-color: #fff; margin: 0; border: 1px solid #e9e9e9;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#fff\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; border-radius: 3px; background-color: #fff; margin: 0; border: 1px solid #e9e9e9;\"><tbody><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td class=\"\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 16px; vertical-align: top; color: #fff; font-weight: 500; text-align: center; border-radius: 3px 3px 0 0; background-color: %app_color%; margin: 0; padding: 20px;\" align=\"center\" valign=\"top\" bgcolor=\"#71b6f9\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 16px; vertical-align: top; color: #fff; font-weight: 500; text-align: center; border-radius: 3px 3px 0 0; background-color: %app_color%; margin: 0; padding: 20px;\"><span style=\"margin-top: 10px; display: block;\" data-mce-style=\"margin-top: 10px; display: block;\">%Lang_ecode%</span></td></tr><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td class=\"content-wrap\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 20px;\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 20px;\"><table style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" class=\"mce-item-table\"><tbody><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td class=\"content-block\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\"><center style=\"font-size: 16px;\" data-mce-style=\"font-size: 16px;\">%Lang_code2%</center></td></tr><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td class=\"content-block\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\"><center style=\"font-size: 18px;\" data-mce-style=\"font-size: 18px;\"><strong>%code%</strong></center></td></tr><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td class=\"content-block\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\"><center style=\"font-size: 16px;\" data-mce-style=\"font-size: 16px;\">%Lang_code3%<strong>%expire%</strong>%Lang_code4%<br>%Lang_code5%</center></td></tr></tbody></table></td></tr></tbody></table><div class=\"footer\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; clear: both; color: #999; margin: 0; padding: 20px;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; clear: both; color: #999; margin: 0; padding: 20px;\"><table style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" width=\"100%\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" class=\"mce-item-table\"><tbody><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td class=\"aligncenter content-block\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 12px; vertical-align: top; color: #999; text-align: center; margin: 0; padding: 0 0 20px;\" align=\"center\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 12px; vertical-align: top; color: #999; text-align: center; margin: 0; padding: 0 0 20px;\"><a style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 12px; color: #999; text-decoration: underline; margin: 0;\" href=\"/%baseUrl%\" data-mce-href=\"/%baseUrl%\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 12px; color: #999; text-decoration: underline; margin: 0;\">%appName%</a></td></tr></tbody></table></div></div></td><td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\"><br></td></tr></tbody></table>', 1652102697),
(3, 'Invoice - 发票', '<table class=\"body-wrap mce-item-table\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; background-color: #f6f6f6; margin: 0;\" bgcolor=\"#f6f6f6\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; background-color: #f6f6f6; margin: 0;\"><tbody><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\"><br></td><td class=\"container\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; display: block !important; max-width: 600px !important; clear: both !important; margin: 0 auto;\" valign=\"top\" width=\"600\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; display: block !important; max-width: 600px !important; clear: both !important; margin: 0 auto;\"><div class=\"content\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; max-width: 600px; display: block; margin: 0 auto; padding: 20px;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; max-width: 600px; display: block; margin: 0 auto; padding: 20px;\"><table class=\"main mce-item-table\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; border-radius: 3px; background-color: #fff; margin: 0; border: 1px solid #e9e9e9;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#fff\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; border-radius: 3px; background-color: #fff; margin: 0; border: 1px solid #e9e9e9;\"><tbody><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td class=\"\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 16px; vertical-align: top; color: #fff; font-weight: 500; text-align: center; border-radius: 3px 3px 0 0; background-color: %app_color%; margin: 0; padding: 20px;\" align=\"center\" valign=\"top\" bgcolor=\"#71b6f9\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 16px; vertical-align: top; color: #fff; font-weight: 500; text-align: center; border-radius: 3px 3px 0 0; background-color: %app_color%; margin: 0; padding: 20px;\"><span style=\"margin-top: 10px; display: block;\" data-mce-style=\"margin-top: 10px; display: block;\">%Lang_order1% : #%orderID%</span></td></tr><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td class=\"content-block aligncenter\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: center; margin: 0; padding: 0 0 20px;\" align=\"center\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: center; margin: 0; padding: 0 0 20px;\"><table class=\"invoice mce-item-table\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; text-align: left; width: 80%; margin: 40px auto;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; text-align: left; width: 80%; margin: 40px auto;\"><tbody><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;\"><center><span style=\"font-size: 17px;\" data-mce-style=\"font-size: 17px;\">%Username% %Lang_order1% %appName%</span><br>%Lang_order2%</center><hr><br><center>%Lang_order5% : %orderDate%</center></td></tr><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 5px 0;\"><table class=\"invoice-items mce-item-table\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; margin: 0;\" cellspacing=\"0\" cellpadding=\"0\"><tbody><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td style=\"width: 73.1524%; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top: 1px solid rgb(238, 238, 238); margin: 0px; padding: 5px 0px;\" valign=\"top\">%Lang_Description%</td><td class=\"alignright\" style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top: 1px solid rgb(238, 238, 238); margin: 0px; padding: 5px 0px; width: 23.7876%;\" align=\"right\" valign=\"top\">%itemDes%</td></tr><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td style=\"width: 73.1524%; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top: 1px solid rgb(238, 238, 238); margin: 0px; padding: 5px 0px;\" valign=\"top\">%Lang_OrderAmount%</td><td class=\"alignright\" style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top: 1px solid rgb(238, 238, 238); margin: 0px; padding: 5px 0px; width: 23.7876%;\" align=\"right\" valign=\"top\">%itemPrice%</td></tr><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td style=\"width: 73.1524%; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top: 1px solid rgb(238, 238, 238); margin: 0px; padding: 5px 0px;\" valign=\"top\">%Lang_AcBalance%</td><td style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top: 1px solid rgb(238, 238, 238); margin: 0px; padding: 5px 0px; width: 23.7876%;\" valign=\"top\">%usermoney%</td></tr><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td style=\"width: 73.1524%; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; border-top: 1px solid rgb(238, 238, 238); margin: 0px; padding: 5px 0px;\" valign=\"top\">%Lang_discount%</td><td class=\"alignright\" style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top: 1px solid rgb(238, 238, 238); margin: 0px; padding: 5px 0px; width: 23.7876%;\" align=\"right\" valign=\"top\">%disPrice%</td></tr><tr class=\"total\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td class=\"alignright\" style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top: 2px solid rgb(51, 51, 51); border-bottom: 2px solid rgb(51, 51, 51); font-weight: bold; margin: 0px; padding: 5px 0px; width: 73.1524%;\" align=\"right\" valign=\"top\" width=\"80%\">%Lang_TotalPrice%</td><td class=\"alignright\" style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; text-align: right; border-top: 2px solid rgb(51, 51, 51); border-bottom: 2px solid rgb(51, 51, 51); font-weight: bold; margin: 0px; padding: 5px 0px; width: 23.7876%;\" align=\"right\" valign=\"top\">%TotalPrice%</td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table><div class=\"footer\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; clear: both; color: #999; margin: 0; padding: 20px;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; clear: both; color: #999; margin: 0; padding: 20px;\"><table style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" width=\"100%\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" class=\"mce-item-table\"><tbody><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td class=\"aligncenter content-block\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 12px; vertical-align: top; color: #999; text-align: center; margin: 0; padding: 0 0 20px;\" align=\"center\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 12px; vertical-align: top; color: #999; text-align: center; margin: 0; padding: 0 0 20px;\"><a style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 12px; color: #999; text-decoration: underline; margin: 0;\" href=\"/%baseUrl%\" data-mce-href=\"/%baseUrl%\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 12px; color: #999; text-decoration: underline; margin: 0;\">%appName%</a></td></tr></tbody></table></div></div></td><td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\"><br></td></tr></tbody></table>', 1652101972),
(4, 'Message -  管理员消息', '<table class=\"body-wrap mce-item-table\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; background-color: #f6f6f6; margin: 0;\" bgcolor=\"#f6f6f6\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; background-color: #f6f6f6; margin: 0;\"><tbody><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\"><br></td><td class=\"container\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; display: block !important; max-width: 600px !important; clear: both !important; margin: 0 auto;\" valign=\"top\" width=\"600\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; display: block !important; max-width: 600px !important; clear: both !important; margin: 0 auto;\"><div class=\"content\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; max-width: 600px; display: block; margin: 0 auto; padding: 20px;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; max-width: 600px; display: block; margin: 0 auto; padding: 20px;\"><table class=\"main mce-item-table\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; border-radius: 3px; background-color: #fff; margin: 0; border: 1px solid #e9e9e9;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#fff\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; border-radius: 3px; background-color: #fff; margin: 0; border: 1px solid #e9e9e9;\"><tbody><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td class=\"\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 16px; vertical-align: top; color: #fff; font-weight: 500; text-align: center; border-radius: 3px 3px 0 0; background-color: %app_color%; margin: 0; padding: 20px;\" align=\"center\" valign=\"top\" bgcolor=\"#71b6f9\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 16px; vertical-align: top; color: #fff; font-weight: 500; text-align: center; border-radius: 3px 3px 0 0; background-color: %app_color%; margin: 0; padding: 20px;\"><span style=\"margin-top: 10px; display: block;\" data-mce-style=\"margin-top: 10px; display: block;\">%Lang_admin_message%</span></td></tr><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td class=\"content-wrap\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 20px;\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 20px;\"><table style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" class=\"mce-item-table\"><tbody><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td class=\"content-block\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\"><br>%Lang_Hello% %Username%<br><br>%Message%</td></tr></tbody></table></td></tr></tbody></table><div class=\"footer\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; clear: both; color: #999; margin: 0; padding: 20px;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; clear: both; color: #999; margin: 0; padding: 20px;\"><table style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" width=\"100%\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" class=\"mce-item-table\"><tbody><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td class=\"aligncenter content-block\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 12px; vertical-align: top; color: #999; text-align: center; margin: 0; padding: 0 0 20px;\" align=\"center\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 12px; vertical-align: top; color: #999; text-align: center; margin: 0; padding: 0 0 20px;\"><a style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 12px; color: #999; text-decoration: underline; margin: 0;\" href=\"/%baseUrl%\" data-mce-href=\"/%baseUrl%\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 12px; color: #999; text-decoration: underline; margin: 0;\">%appName%</a></td></tr></tbody></table></div></div></td><td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\"><br></td></tr></tbody></table>', 1652093246),
(5, 'Password Reset - 重设密码', '<table class=\"body-wrap mce-item-table\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; background-color: #f6f6f6; margin: 0;\" bgcolor=\"#f6f6f6\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; background-color: #f6f6f6; margin: 0;\"><tbody><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\"><br></td><td class=\"container\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; display: block !important; max-width: 600px !important; clear: both !important; margin: 0 auto;\" valign=\"top\" width=\"600\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; display: block !important; max-width: 600px !important; clear: both !important; margin: 0 auto;\"><div class=\"content\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; max-width: 600px; display: block; margin: 0 auto; padding: 20px;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; max-width: 600px; display: block; margin: 0 auto; padding: 20px;\"><table class=\"main mce-item-table\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; border-radius: 3px; background-color: #fff; margin: 0; border: 1px solid #e9e9e9;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#fff\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; border-radius: 3px; background-color: #fff; margin: 0; border: 1px solid #e9e9e9;\"><tbody><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td class=\"\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 16px; vertical-align: top; color: #fff; font-weight: 500; text-align: center; border-radius: 3px 3px 0 0; background-color: %app_color%; margin: 0; padding: 20px;\" align=\"center\" valign=\"top\" bgcolor=\"#71b6f9\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 16px; vertical-align: top; color: #fff; font-weight: 500; text-align: center; border-radius: 3px 3px 0 0; background-color: %app_color%; margin: 0; padding: 20px;\"><span style=\"margin-top: 10px; display: block;\" data-mce-style=\"margin-top: 10px; display: block;\">%Lang_Passnote7%</span></td></tr><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td class=\"content-wrap\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 20px;\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 20px;\"><table style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" class=\"mce-item-table\"><tbody><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td class=\"content-block\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\"><center style=\"font-size: 16px;\" data-mce-style=\"font-size: 16px;\">%Lang_Passnote1%%requestip%<br>%Lang_Passnote2%</center></td></tr><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td class=\"content-block\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\"><center><a class=\"btn\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; color: #fff; text-decoration: none; line-height: 2em; font-weight: bold; text-align: center; cursor: pointer; display: inline-block; border-radius: 5px; background-color: %app_color%; margin: 0; border-color: %app_color%; border-style: solid; border-width: 8px 16px;\" href=\"/%resetlink%\" type=\"button\" data-mce-href=\"/%resetlink%\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; color: #fff; text-decoration: none; line-height: 2em; font-weight: bold; text-align: center; cursor: pointer; display: inline-block; border-radius: 5px; background-color: %app_color%; margin: 0; border-color: %app_color%; border-style: solid; border-width: 8px 16px;\">%Lang_Passnote6% </a></center></td></tr><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td class=\"content-block\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\"><center style=\"font-size: 16px;\" data-mce-style=\"font-size: 16px;\">%Lang_Passnote3%<strong>%expire%</strong>%Lang_Passnote4%<br>%Lang_Passnote5%</center></td></tr></tbody></table></td></tr></tbody></table><div class=\"footer\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; clear: both; color: #999; margin: 0; padding: 20px;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; clear: both; color: #999; margin: 0; padding: 20px;\"><table style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" width=\"100%\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" class=\"mce-item-table\"><tbody><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td class=\"aligncenter content-block\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 12px; vertical-align: top; color: #999; text-align: center; margin: 0; padding: 0 0 20px;\" align=\"center\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 12px; vertical-align: top; color: #999; text-align: center; margin: 0; padding: 0 0 20px;\"><a style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 12px; color: #999; text-decoration: underline; margin: 0;\" href=\"/%baseUrl%\" data-mce-href=\"/%baseUrl%\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 12px; color: #999; text-decoration: underline; margin: 0;\">%appName%</a></td></tr></tbody></table></div></div></td><td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\"><br></td></tr></tbody></table>', 1652139862);
INSERT INTO `templates` (`id`, `title`, `content`, `datetime`) VALUES
(6, 'Backup - 备份', '<table class=\"body-wrap mce-item-table\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; background-color: #f6f6f6; margin: 0;\" bgcolor=\"#f6f6f6\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; background-color: #f6f6f6; margin: 0;\"><tbody><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\"><br></td><td class=\"container\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; display: block !important; max-width: 600px !important; clear: both !important; margin: 0 auto;\" valign=\"top\" width=\"600\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; display: block !important; max-width: 600px !important; clear: both !important; margin: 0 auto;\"><div class=\"content\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; max-width: 600px; display: block; margin: 0 auto; padding: 20px;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; max-width: 600px; display: block; margin: 0 auto; padding: 20px;\"><table class=\"main mce-item-table\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; border-radius: 3px; background-color: #fff; margin: 0; border: 1px solid #e9e9e9;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#fff\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; border-radius: 3px; background-color: #fff; margin: 0; border: 1px solid #e9e9e9;\"><tbody><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td class=\"\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 16px; vertical-align: top; color: #fff; font-weight: 500; text-align: center; border-radius: 3px 3px 0 0; background-color: %app_color%; margin: 0; padding: 20px;\" align=\"center\" valign=\"top\" bgcolor=\"#71b6f9\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 16px; vertical-align: top; color: #fff; font-weight: 500; text-align: center; border-radius: 3px 3px 0 0; background-color: %app_color%; margin: 0; padding: 20px;\"><span style=\"margin-top: 10px; display: block;\" data-mce-style=\"margin-top: 10px; display: block;\">%title%</span></td></tr><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td class=\"content-wrap\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 20px;\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 20px;\"><table style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" class=\"mce-item-table\"><tbody><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td class=\"content-block\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0; padding: 0 0 20px;\"><br>%Lng_Hello% %Lang_admin%<br>%text%</td></tr></tbody></table></td></tr></tbody></table><div class=\"footer\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; clear: both; color: #999; margin: 0; padding: 20px;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; width: 100%; clear: both; color: #999; margin: 0; padding: 20px;\"><table style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" width=\"100%\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" class=\"mce-item-table\"><tbody><tr style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;\"><td class=\"aligncenter content-block\" style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 12px; vertical-align: top; color: #999; text-align: center; margin: 0; padding: 0 0 20px;\" align=\"center\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 12px; vertical-align: top; color: #999; text-align: center; margin: 0; padding: 0 0 20px;\"><a style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 12px; color: #999; text-decoration: underline; margin: 0;\" href=\"/%baseUrl%\" data-mce-href=\"/%baseUrl%\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 12px; color: #999; text-decoration: underline; margin: 0;\">%appName%</a></td></tr></tbody></table></div></div></td><td style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\" valign=\"top\" data-mce-style=\"font-family: \'Helvetica Neue\',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; vertical-align: top; margin: 0;\"><br></td></tr></tbody></table>', 1652093196),
(7, 'Terms Of Service & Privacy - 特别提示', '<h2>特别提示</h2><p>在此特别提醒您（用户）在注册成为 %appName% 用户之前，请认真阅读本《%appName% 用户服务协议》 （以下简称“协议”） ，确保您充分理解本协议中各条款。 请您审慎阅读并选择接受或不接受本协议。 除非您接受本协议所有条款， 否则您无权注册、登录或使用本协议所涉服务。您 的注册、登录、使用等行为将视为对本协议的接受，并同意接受本协议各项条款的约束。 本协议约定 %appName% 与用户之间关于”SSR“服务（以下简称“服务”） 的权利义务。“用户”是指注册、登录、使用本服务的个人，%appName% 有权更新协议内容， ，更新后的协议条款一旦公布即替代原协议条款，恕不再另行通知。</p><h6>账号注册</h6><ol><li>用户在使用本服务前需要注册一个 “%appName%” 账号。“%appName%” 账号应当使用邮箱绑定注册，请用户使用尚未与其他 “%appName%” 账号绑定以及未被 %appName% 根据本协议封禁的邮箱注册 “%appName%” 账号。%appName% 有权根据用户需求或产品需要对账号注册和绑定的方式进行变更，恕不再另行通知。</li><li>如果注册申请者有被 %appName% 封禁的先例或涉嫌虚假注册及滥用他人名义注册，及其他不能得到许可的理由，%appName% 有权拒绝向其提供服务。</li></ol><h6>账户安全</h6><ol><li>用户一旦注册成功，成为 %appName% 的用户，将得到一个用户名和密码， 并有权利使用自己的用户名及密码随时登陆 %appName%。</li><li>用户对账户和密码的安全负全部责任，同时对以其账户进行的所有活动和事件负全部责任。</li><li>%appName% 未经用户允许不得泄露用户的个人隐私与信息。</li><li>如果用户密码泄露或者其他任何原因导致用户的密码安全受到威胁，应该及时和 %appName% 客服人员取得联系，否则后果自负。</li></ol><h6>用户声明与保证</h6><ol><li>用户需具有完全民事行为能力，且具有达成交易履行其义务的能力。</li><li>用户通过使用 %appName% 的过程中所制作、上载、复制、发布、传播的任何内容，包括但不限于账号头像、名称、用户说明等注册信息及认证资料，或文字、语音、图片、视频、图文等发送、回复和相关链接页面，以及其他使用账号或本服务所产生的内容，不得违反国家相关法律制度，包含但不限于如下原则：<ul><li>反对宪法所确定的基本原则的</li><li>危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的</li><li>损害国家荣誉和利益的</li><li>煽动民族仇恨、民族歧视，破坏民族团结的</li><li>破坏国家宗教政策，宣扬邪教和封建迷信的</li><li>散布谣言，扰乱社会秩序，破坏社会稳定的</li><li>散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的</li><li>侮辱或者诽谤他人，侵害他人合法权益的</li><li>含有法律、行政法规禁止的其他内容的</li></ul></li><li>用户不得利用 “%appName%” 账号或本服务制作、上载、复制、发布、传播下干扰正常运营，以及侵犯其他用户或第三方合法权益的内容:<ul><li>含有任何性或性暗示的</li><li>含有辱骂、恐吓、威胁内容的</li><li>含有骚扰、垃圾广告、恶意信息、诱骗信息的</li><li>涉及他人隐私、个人信息或资料的</li><li>侵害他人名誉权、肖像权、知识产权、商业秘密等合法权利的</li><li>含有其他干扰本服务正常运营和侵犯其他用户或第三方合法权益内容的信息</li></ul></li></ol><h6>服务内容</h6><ol><li>%appName% 具体服务内容由 %appName% 根据实际情况提供，包括但不限于：<ul><li>在线咨询服务</li><li>网络代理服务</li></ul></li><li>所有发给用户的通告及其他消息都可通过邮箱或者用户所提供的联系方式发送。</li><li>本站无退款机制，不接受退款请求， 新注册用户请先试用。</li></ol><h6>服务的终止</h6><ol><li>在下列情况下， %appName% 有权终止向用户提供服务：<ul><li>用户违反本服务协议相关规定</li><li>半年以以上未使用 “%appName%” 服务，%appName% 有权终止向用户提供服务并不再保留用户相关数据</li><li>用户不得通过 “%appName%” 服务传播违反本协议规定的内容，一经发现，%appName% 有权扣留账户内的金额</li><li>本服务条款终止或更新时，用户明确表示不愿接受新的服务条款</li><li>其它 %appName% 认为需终止服务的情况</li></ul></li><li>服务终止后，%appName% 没有义务为用户保留原账号中或与之相关的任何信息。</li></ol><h6>服务的变更、中断</h6><ol><li>鉴于网络服务的特殊性，用户需同意 %appName% 会变更、 中断部分或全部的网络服务，并删除（不再保存）用户在使用过程中提交的任何资料，而无需通知用户，也无需对任何用户或任何第三方承担任何责任。</li><li>%appName% 需要定期或不定期地对提供网络服务的平台进行检测或者更新，造成网络服务在合理时间内的中断，%appName% 有义务进行提前通知， 除此之外 %appName% 无需为此承担任何责任。</li></ol><h6>服务条款修改</h6><ol><li>%appName% 有权随时修改本服务条款的任何内容， 一旦本服务条款的任何内容发生变动， %appName% 将会通过适当方式向用户提示修改内容。</li><li>如果不同意 %appName% 对本服务条款所做的更新及改动，用户有权停止使用 %appName% 服务。</li><li>如果用户继续使用网络服务，则视为用户接受 %appName% 对本服务条款所做的修改。</li></ol><h6>免责与赔偿声明</h6><ol><li>若 %appName% 已经明示其服务提供方式发生变更并提醒用户应当注意事项，如因此类情况而 用户未按要求操作所产生的一切后果由用户自行承担。</li><li>用户明确同意其使用 %appName% 所存在的风险将完全由其自己承担，因其使用 %appName% 而产生的一切后果也由其自己承担。</li><li>用户同意保障和维护 %appName% 及其他用户的利益，由于用户在使用 %appName% 有违法、不真实、 不正当、侵犯第三方合法权益的行为，或用户违反本协议项下的任何条款而给 %appName% 及任何其他第三方造成损失，用户同意承担由此造成的损害赔偿责任。</li></ol><h6>隐私声明</h6><ol><li>适用范围：<ul><li>在用户注册 %appName% 账户时，根据要求提供的个人注册信息</li><li>在用户使用 %appName%，或访问其相关网页时， %appName% 自动接收并记录的用户浏览器上的服 务器数值，包括但不限于 IP 地址等数据及用户要求取用的网页记录</li></ul></li><li>信息使用：<ul><li>%appName% 不会向任何人出售或出借用户的个人信息，除非事先得到用户的许可</li><li>%appName% 亦不允许任何第三方以任何手段收集、 编辑、出售或者无偿传播用户的个人信息。任何用户如从事上述活动，一经发现，%appName% 有权立即终止与该用户的服务协议 ，查封其账号</li><li>为达到服务用户的目的，%appName% 可能通过使用用户的个人信息，向用户提供服务，包括但不限于向用户发出产品和服务信息</li></ul></li><li>信息披露： 用户的个人信息将在下述情况下部分或全部被披露<ul><li>经用户同意，向第三方披露</li><li>根据法律的有关规定，或者行政或司法机构的要求，向第三方或者行政、司法机构披露</li><li>如果用户出现违反中国有关法律或者网站政策的情况，需要向第三方披露</li><li>用户使用 %appName% 时提供的银行账户信息，%appName% 将严格履行相关保密约定</li></ul></li></ol><h6>其他</h6><ol><li>%appName% 郑重提醒用户注意本协议中免除 %appName% 责任和限制用户权利的条款，请用户仔细阅读，自主考虑风险。未成年人应在法定监护人的陪同下阅读本协议。</li><li>本协议最终解释权归 %appName% 所有，并且保留一切解释和修改的权力。</li></ol>', 1652092914);


ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1; 
COMMIT;
