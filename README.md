[![Build Status](https://travis-ci.org/thomasmeeus/chef-sabnzbd.svg?branch=master)](https://travis-ci.org/thomasmeeus/chef-sabnzbd)
Description
-----------
Chef recipe to install and configure Sabnzbd.

Recipes
=======
default
-------
This recipe installs and configures Sabnzbd.

Attributes
----------

* ```default['sabnzbd']['user']   = "sabnzbd"``` - The user that runs Sabnzbd
* ```default['sabnzbd']['group']   = "sabnzbd"``` - Sabnzbd's group
* ```default['sabnzbd']['host']   = "localhost"``` - IP address for the webserver. ```localhost``` or ``127.0.0.1``` as default
* ```default['sabnzbd']['download_dir']   = "Downloads/incomplete"``` - Location for incomplete files
* ```default['sabnzbd']['complete_dir']   = "Downloads/complete"``` - Location for complete files

To set the usenet servers, use the following array:

    default['sabnzbd']['servers'] =
        [
            {
                "name" => "usenetserver1.com",
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
            {
                "name" => "usenetserver2.com",
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


Requirements
------------

Supports:

* Ubuntu
* Debian
