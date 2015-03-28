include_recipe 'apt::default'

if node['platform'] == 'debian'
  apt_repository 'contrib' do
    uri 'http://http.debian.net/debian'
    distribution node['lsb']['codename']
    components ['contrib']
  end
else
  apt_repository 'sabnzbd' do
    uri 'http://ppa.launchpad.net/jcfp/ppa/ubuntu'
    distribution node['lsb']['codename']
    components ['main']
    keyserver 'keyserver.ubuntu.com'
    key '4BB9F05F'
  end
end

%w(
  sabnzbdplus sabnzbdplus-theme-smpl
  sabnzbdplus-theme-plush sabnzbdplus-theme-iphone
).each do |pkg|
  package pkg do
    action :install
  end
end

template '/etc/default/sabnzbdplus' do
  source 'sabnzbd.erb'
  notifies :restart, 'service[sabnzbdplus]'
end

directory "#{node['sabnzbd']['location']}.sabnzbd/" do
  recursive true
  action :create
end

template "#{node['sabnzbd']['location']}.sabnzbd/sabnzbd.ini" do
  source 'sabnzbd.ini.erb'
  notifies :restart, 'service[sabnzbdplus]'
end

service 'sabnzbdplus' do
  action :start
end

bash 'update-rc.d' do
  code 'update-rc.d sabnzbdplus defaults'
end
