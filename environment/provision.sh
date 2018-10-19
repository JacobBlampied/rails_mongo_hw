#! /bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install nginx -y
sudo apt-get install ruby -y
sudo apt-get install gem -y

sudo apt-get install python-software-properties -y
wget -qO- https://deb.nodesource.com/setup_6.x | sudo -E bash -
# sudo apt-get install -y nodejs
# sudo npm install -g pm2

cd /home/vagrant/app/app
# pm2 start app.js

sudo mv /etc/nginx/sites-available/default /etc/nginx/sites-available/default.bak
sudo ln -s /home/vagrant/app/app/default /etc/nginx/sites-available/default
sudo service nginx restart
