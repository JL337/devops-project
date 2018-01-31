# DevOps Project

Aim of this project is to set up a working development environment using dev tools Vagrant and Virtual Box.

## Install Virtualbox

`% sudo apt-get install virtualbox` or use:

<https://www.virtualbox.org/wiki/Downloads>


## Install Vagrant

`% sudo apt-get install vagrant` or use:

<https://www.vagrantup.com/downloads.html>

### Check current installed version of Vagrant
`% vagrant --version`

## Implementation

To implement the virtual machine follow these steps:

* Clone down this repository to a directory of your choice, eg. `project`

* `% git clone git@github.com:JL337/devops-project.git project`

* Navigate to the named repo, example: `cd project`

* Go back to the Host terminal and lauch the vagrant app. `% vagrant up`

* Then `% vagrant ssh` to open the vagrant appplication.

* Within the Guest machine, install the relevant dependencies: 
	* `vagrant@ubuntu-xenial:~$ sudo apt-get update -y` 
	* `vagrant@ubuntu-xenial:~$ sudo apt-get install nginx -y`
	
* Point to local host port: `vagrant@ubuntu-xenial:~$ curl localhost: 80`

* Navigate back to host machine, by typing `exit` in the guest machine terminal.

* Restart vagrant to check for changes: `% vagrant reload`

* Check current localhost: `% cat /etc/hosts`

* Attempt to connect to the development page on your local browser by typing in the URL : `http://dev.local/`. The start-up page for nginx should appear.

* The project is now ready.

* Jenkins Webhook Testing
* First test



















 



