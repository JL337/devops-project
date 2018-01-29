# DevOps Project

Aim of this project is to set up a working development environment using dev tools Vagrant and Virtual Box.

##Install Virtualbox

`% sudo apt-get install virtualbox`

##Install Vagrant

`% sudo apt-get install vagrant`

###Check current installed version of Vagrant
`% vagrant --version`


## Implementation

To implement the virtual machine follow these steps:

1. Create a new directory: `% mkdir project`
2. Navigate to the directory. `% cd project`
3. Intialise vagrant files with: `% vagrant init ubuntu/xenial64`
4. Inside the directory, open file `Vagrantfile` in a code editor.
5. Edit contents of `Vagrantfile` to match:

		# -*- mode: ruby -*-
		# vi: set ft=ruby :
	
		Vagrant.configure("2") do |config|
		
		  config.vm.box = "ubuntu/xenial64"
		  config.vm.network "private_network", ip: "192.168.10.100"
		  config.hostsupdater.aliases = ["dev.local"]
		
		end
		
6. Go back to the terminal and lauch the varant app. `% vagrant up`
7. Then `% vagrant ssh`
8. Within the Guest machine, install the revelant dependencies: 
	* `vagrant@ubuntu-xenial:~$ sudo apt-get update -y` 
	* `vagrant@ubuntu-xenial:~$ sudo apt-get install nginx -y`
9. Point to local host port: `vagrant@ubuntu-xenial:~$ curl localhost: 80`
10. Reload vagrant to check for changes: `vagrant reload`
11. Navigate back to host machine, by typing `exit` in the guest machine terminal.
12. Check current localhost: `% cat /etc/hosts`
13. `% vagrant plugin install vagrant-hostsupdater`
14. Attempt to connect to the development page on your local browser by typing in the URL : `http://dev.local/`. The start-up page for nginx should appear.




















 



