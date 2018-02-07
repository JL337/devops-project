#!/bin/bash

# Update and Upgrade
sudo apt-get update -y
sudo apt-get upgrade -y

#Install nginx
sudo apt-get install nginx -y 
sudo cp /home/ubuntu/templates/nginx.conf /etc/nginx/sites-available
sudo ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/nginx.conf
sudo rm /etc/nginx/sites-enabled/default

#Restart nginx
sudo systemctl restart nginx

#Install node.js, should match /v6./
curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
sudo bash ./nodesource_setup.sh
sudo apt-get install -y nodejs

#Install pm2
sudo npm install pm2 -g

