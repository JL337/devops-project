# -*- mode: ruby -*-
# vi: set ft=ruby :
required_plugins = ["vagrant-hostsupdater"]
required_plugins.each do |plugin|
    exec "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
end

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"
  config.vm.network "private_network", ip: "192.168.10.100"
  config.hostsupdater.aliases = ["dev.local"]

  #Synced app folder
  config.vm.synced_folder "app", "/home/ubuntu/app"

  # Provision
  config.vm.provision "shell", path: "environment/app/provision.sh"
end
