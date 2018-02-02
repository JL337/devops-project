# -*- mode: ruby -*-
# vi: set ft=ruby :

#Install plugins without using command line interface
required_plugins = ["vagrant-hostsupdater"]
required_plugins.each do |plugin|
    exec "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
end

Vagrant.configure("2") do |config|
	# 1st box for App
	config.vm.define "app" do |app|
	 	app.vm.box = "ubuntu/xenial64"
		app.vm.network "private_network", ip: "192.168.10.100"
		app.hostsupdater.aliases = ["dev.local"]

		#Synced app folder
		app.vm.synced_folder ".", "/home/ubuntu/app"
		app.vm.synced_folder "./environment/app/profiled", "/etc/profile.d"

		# Provision
		app.vm.provision "shell", path: "environment/app/provision.sh"
	end

  	# 2nd box for Database
	config.vm.define "db" do |db|
		db.vm.box = "ubuntu/xenial64"
	    db.vm.network "private_network", ip: "192.168.10.150"
	    db.hostsupdater.aliases = ["database.local"]

	    # Synced folder for db
	    db.vm.synced_folder "./environment/db", "/home/ubuntu/db"

	    #Provision
	    db.vm.provision "shell", path: "environment/db/provision.sh"
	end
end