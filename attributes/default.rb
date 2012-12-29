default['sabnzbd']['user']   = "sabnzbd"
default['sabnzbd']['group']   = "sabnzbd"
default['sabnzbd']['host']   = "localhost"
default['sabnzbd']['port']   = "8080"
default['sabnzbd']['download_dir']   = "Downloads/incomplete"
default['sabnzbd']['complete_dir']   = "Downloads/complete"

default['sabnzbd']['servers'] = [
                                              {   "name" => "usenetserver1.com",
                                                  "username" => "",
                                                   "timeout" => "120",
                                                  "enable" => "1",
                                                   "fillserver" => "0",
                                                   "connections" => "10",
                                                   "ssl" => "1",
                                                   "host" => "server.usenetserver1",
                                                   "password" => "",
                                                   "optional" => "0",
                                                   "port" => "443",
                                                   "retention" => "9000",
                                               },
                                               {   "name" => "usenetserver2.com",
                                                  "username" => "",
                                                  "enable" => "1",
                                                   "fillserver" => "1",
                                                   "connections" => "10",
                                                   "ssl" => "0",
                                                   "host" => "server.usenetserver2",
                                                   "timeout" => "120",
                                                   "password" => "",
                                                   "optional" => "1",
                                                   "port" => "80",
                                                   "retention" => "0",
                                               }
                                      ]
