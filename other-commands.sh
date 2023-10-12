# OTHER COMMANDS USED 
# DURING THE SETUP


# adding new user with
# root priviledges
adduser [user_name]
sudo usermod -aG sudo [user_name]
su - [user_name]


# run github actions in
# background && as root
sudo ./svc.sh install
sudo ./svc.sh start
RUNNER_ALLOW_RUNASROOT=1 ./config.sh [...]

RUNNER_ALLOW_RUNASROOT=1 sudo ./svc.sh install
RUNNER_ALLOW_RUNASROOT=1 sudo ./svc.sh start


# debugging laravel and PHP issues
sudo chown -R www-data:www-data /var/www/laravel

sudo chmod -R 775 /var/www/laravel/storage
sudo chmod -R 775 /var/www/laravel/bootstrap/cache

sudo chmod 664 /var/www/laravel/.env

sudo systemctl restart php8.1-fpm

sudo systemctl restart nginx

