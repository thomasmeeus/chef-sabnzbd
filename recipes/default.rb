apt_repository "sabnzbd" do
  uri "http://ppa.launchpad.net/jcfp/ppa/ubuntu"
  distribution node['lsb']['codename']
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "4BB9F05F"
end

%w{
    sabnzbdplus sabnzbdplus-theme-smpl
    sabnzbdplus-theme-plush sabnzbdplus-theme-iphone
    }.each do |pkg|
        package pkg do
            action :upgrade
        end
    end

template "/etc/default/sabnzbdplus" do
    source "sabnzbd.erb"
    mode 0644
end


# typically this will run /etc/init.d/example_service start
service "sabnzbdplus" do
  action :start
end