#
# Cookbook:: mongo
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

apt_update

apt_repository 'mongodb' do
  uri          'http://repo.mongodb.org/apt/ubuntu'
  distribution 'xenial/mongodb-org/3.2'
  components   ['multiverse']
  keyserver 'hkp://keyserver.ubuntu.com'
  key 'EA312927'
end

package 'mongodb-org' do
	action :upgrade
end

template '/etc/mongod.conf' do
	source 'mongod.conf.erb'
	owner 'mongodb'
	group 'mongodb'
	mode '0750'
	notifies :restart, "service[mongod]"
end

template '/lib/systemd/system/mongod.service' do
	source 'mongod.service'
	owner 'root'
	group 'root'
	mode '0750'
	notifies :restart, "service[mongod]"	
end

service 'mongod' do
	action [:enable, :start]
end


