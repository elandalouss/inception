#!/bin/bash

mkdir -p /run/php/
chown -R www-data:www-data /run/php/


sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/' /etc/php/7.3/fpm/pool.d/www.conf
#cp -r wordpress/* /var/www/html/aelandal_db;
cd /var/www/html/aelandal_db

rm -rf /var/www/html/aelandal_db/*

wp core download --allow-root
wp core config --dbname=${WP_DB_NAME} --dbuser=${WP_USER_NAME} --dbpass=${WP_USE_PASSWD} --dbhost=mariadb --allow-root

exec php-fpm7.3 -F -R


