#!/bin/bash

chown -R www-data:www-data /var/www/html/*
mkdir -p /run/php/
chown -R www-data:www-data /run/php/
sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/' /etc/php/7.3/fpm/pool.d/www.conf
curl -O https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz 
rm -rf latest.tar.gz
chown -R www-data:www-data /var/www/html/wordpress/*
cd /var/www/html/wordpress

wp config create --dbname=${WP_DB_NAME} --dbuser=${WP_USER_NAME} --dbpass=${WP_USE_PASSWD} --dbhost=mariadb --allow-root
wp core install --url=${DOMAIN_NAME} --title=inception --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PW}  --admin_email=${WP_ADMIN_EMAIL} --allow-root
wp user create ${WP_USER} ${WP_EMAIL} --role=author --user_pass=${WP_PW} --role=author --allow-root
exec php-fpm7.3 -F -R

