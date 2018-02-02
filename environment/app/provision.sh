#!/bin/bash

# Update and Upgrade
sudo apt-get update -y
sudo apt-get upgrade -y
#Install nginx
sudo apt-get install nginx -y 
#Install node.js, should match /v6./
curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
sudo bash ./nodesource_setup.sh
sudo apt-get install -y nodejs
#Install pm2
sudo npm install pm2 -g
#Start the app
sudo pm2 start app.js