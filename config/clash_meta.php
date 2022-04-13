<?php
$XManager['ClashM_Profiles'] = [
    'clashm_en' => [
        'Checks' => [],
        'General' => [
            'port'                => 7890,
            'socks-port'          => 7891,
            'redir-port'          => 7892,
			'mixed-port'	  	  => 7893,
			'tproxy-port'         => 7894,
            'allow-lan'           => true,
            'mode'                => 'rule',
            'log-level'           => 'info',
            'external-controller' => '0.0.0.0:9090',
            'secret'              => '123456'
        ],
		'DNS' => [
            'enable'              => true,
            'ipv6'                => false,
            'listen'              => '0.0.0.0:53',
            'enhanced-mode'       => 'redir-host',
            'fake-ip-range'       => '198.18.0.1/16',
			'default-nameserver'=>[
				'8.8.8.8',
				'114.114.114.114'
			],
            'nameserver'		  =>[
                '114.114.114.114',
                'tcp://223.5.5.5'
            ],
            'fallback'			  =>[
			    '"8.8.8.8"',
                'tls://223.5.5.5:853',
                'https://223.5.5.5/dns-query'
            ],
            'fallback-filter'=>[
                'geoip'=> true,
                'ipcidr'=>[
                    '240.0.0.0/4'
                ]
            ]
        ],
        'proxies' => [],
        'proxy-groups' => [
            [
                'name' => '🔰Global',
                'type' => 'select',
                'content' => [
                    'regex' => '(.*)',
                    'right-proxies' => [
                        '🚀Direct'
                    ],
                ]
            ],
            [
                'name' => '⚓️Others',
                'type' => 'select',
                'content' => [
                    'left-proxies' => [
                        '🔰Global',
                        '🚀Direct'
                    ]
                ]
            ],
            [
                'name' => '✈️Telegram',
                'type' => 'select',
                'content' => [
                    'left-proxies' => [
                        '🔰Global'
                    ],
                    'regex' => '(.*)',
                ]
            ],
            [
                'name' => '🎬Youtube',
                'type' => 'select',
                'content' => [
                    'left-proxies' => [
                        '🔰Global'
                    ],
                    'regex' => '(.*)',
                ]
            ],
            [
                'name' => '🎬Netflix',
                'type' => 'select',
                'content' => [
                    'left-proxies' => [
                        '🔰Global',
						'🚀Direct'
                    ],
                    'regex' => '(.*)',
                ]
            ],
            [
                'name' => '🎬Media',
                'type' => 'select',
                'content' => [
                    'left-proxies' => [
                        '🔰Global',
						'🚀Direct'
                    ],
                    'regex' => '(.*)',
                ]
            ],
            [
                'name' => '🍎Apple',
                'type' => 'select',
                'content' => [
                    'left-proxies' => [
                        '🚀Direct',
                        '🔰Global'
                    ]
                ]
            ],
            [
                'name' => '🚀Direct',
                'type' => 'select',
                'content' => [
                    'left-proxies' => [
                        'DIRECT'
                    ]
                ]
            ]
        ],
        'rules' => [
            'source' => 'clashm_rule_1.tpl'
        ]
    ],
    'clashm_cn' => [
        'Checks' => [],
        'General' => [
            'port'                => 7890,
            'socks-port'          => 7891,
            'redir-port'          => 7892,
            'allow-lan'           => false,
            'mode'                => 'rule',
            'log-level'           => 'info',
            'external-controller' => '0.0.0.0:9090',
            'secret'              => '123456'
        ],
        'DNS' => [
            'enable'              => true,
            'ipv6'                => false,
            'listen'              => '0.0.0.0:53',
            'enhanced-mode'       => 'fake-ip',
            'fake-ip-range'       => '198.18.0.1/16',
			'default-nameserver'=>[
				'8.8.8.8',
				'114.114.114.114'
			],
            'nameserver'=>[
                '119.29.29.29',
                '1.1.1.1'
            ],
            'fallback'=>[
                '1.0.0.1',
                '8.8.8.8'
            ],
            'fallback-filter'=>[
                'geoip'=> true,
                'ipcidr'=>[
                    '240.0.0.0/4'
                ]
            ]
        ],
        'proxies' => [],
        'proxy-groups' => [
			[
                'name' => '🔰国外流量',
                'type' => 'select',
                'content' => [
                    'regex' => '(.*)',
                    'right-proxies' => [
                        '🚀直接连接'
                    ],
                ]
            ],
            [
                'name' => '⚓️其他流量',
                'type' => 'select',
                'content' => [
                    'left-proxies' => [
                        '🔰国外流量',
                        '🚀直接连接'
                    ]
                ]
            ],
            [
                'name' => '✈️Telegram',
                'type' => 'select',
                'content' => [
                    'left-proxies' => [
                        '🔰国外流量'
                    ],
                    'regex' => '(.*)',
                ]
            ],
            [
                'name' => '🎬Youtube',
                'type' => 'select',
                'content' => [
                    'left-proxies' => [
                        '🔰国外流量'
                    ],
                    'regex' => '(.*)',
                ]
            ],
            [
                'name' => '🎬Netflix',
                'type' => 'select',
                'content' => [
                    'left-proxies' => [
                        '🔰国外流量'
                    ],
                    'regex' => '(.*)',
                ]
            ],
            [
                'name' => '🎬哔哩哔哩',
                'type' => 'select',
                'content' => [
                    'left-proxies' => [
                        '🚀直接连接'
                    ],
                    'regex' => '(.*)',
                ]
            ],
            [
                'name' => '🎬国外媒体',
                'type' => 'select',
                'content' => [
                    'left-proxies' => [
                        '🔰国外流量'
                    ],
                    'regex' => '(.*)',
                ]
            ],
            [
                'name' => '🍎苹果服务',
                'type' => 'select',
                'content' => [
                    'left-proxies' => [
                        '🚀直接连接',
                        '🔰国外流量'
                    ]
                ]
            ],		
            [
                'name' => '🚀直接连接',
                'type' => 'select',
                'content' => [
                    'left-proxies' => [
                        'DIRECT'
                    ]
                ]
            ]
        ],
        'rules' => [
            'source' => 'clashm_rule_2.tpl'
        ]
    ]	
];


