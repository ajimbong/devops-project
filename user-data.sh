#!/bin/bash

# THE PURPOSE OF THIS SCRIPT IS TO
# BOOTSTRAP THE SERVER WITH NGINX,
# NODE JS AND PHP

# installing nginx webserver
sudo apt install nginx -y
systemctl enable nginx
systemctl start nginx

# installing node, npm and angular cli
sudo apt-get install -y ca-certificates curl gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
NODE_MAJOR=20
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
sudo apt-get install nodejs -y
sudo apt install npm -y
npm install -g @angular/cli


# installing php, composer and
# php
sudo apt install php php-xml php-curl -y
sudo apt install zip unzip -y
wget https://getcomposer.org/download/latest-stable/composer.phar
chmod +x composer.phar
sudo mv composer.phar /usr/local/bin/composer
sudo apt-get install php8.1-fpm -y
sudo systemctl enable php8.1-fpm
sudo systemctl start php8.1-fpm
