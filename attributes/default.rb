default['sabnzbd']['user']   = "sabnzbd"
default['sabnzbd']['group']   = "sabnzbd"
default['sabnzbd']['host']   = "localhost"
default['sabnzbd']['port']   = "8080"
default['sabnzbd']['download_dir']   = "Downloads/incomplete"
default['sabnzbd']['complete_dir']   = "Downloads/complete"
default['sabnzbd']['api_key']   = ""


default['sabnzbd']['enable_tv_sorting'] = "1"
default['sabnzbd']['tv_categories'] = "tv,"
default['sabnzbd']['tv_sort_string'] = "%sn/Season %s/%sn - %sx%0e - %en.%ext"
default['sabnzbd']['enable_movie_sorting'] = "1"
default['sabnzbd']['movie_categories'] = "movie,"
default['sabnzbd']['movie_sort_string'] = "%title (%y)/%title (%y).%ext"
default['sabnzbd']['ignore_samples'] = "0"
default['sabnzbd']['cleanup_list'] = ".nfo, .sfv"
default['sabnzbd']['pre_check'] = "1"
default['sabnzbd']['no_dupes']  = "1"
default['sabnzbd']['quota_period']  = "m"
default['sabnzbd']['quota_day']  = "12"
default['sabnzbd']['quota_size']  = "30G"
default['sabnzbd']['quota_resume'] = "0"
default['sabnzbd']['download_free'] ="1G"

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
default['sabnzbd']['categories'] = [
                                              {   "name" => "*",
                                                  "priority" => "",
                                                  "pp" => "3",
                                                  "script" => "None",
                                                  "newsbin" => "",
                                                   "dir" => ""
                                               },
                                              {   "name" => "music",
                                                  "priority" => "-100",
                                                   "pp" => "3",
                                                  "script" => "Default",
                                                  "newsbin" => "",
                                                   "dir" => "/Downloads/music"
                                               }
                                      ]

