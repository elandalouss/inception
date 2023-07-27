#!/bin/bash

WP_DB_NAME=aelandal

WP_USER_NAME=aelandal
WP_USE_PASSWD=aelandal911
WP_DB_HOST=mariadb
DOMAIN_NAME=aelandal.42.fr
WP_ADMIN_USER=aelandal
WP_ADMIN_PW=aelandal911
WP_ADMIN_EMAIL=aelandal@wa3.3iw
WP_USER=ana
WP_EMAIL=ana@wa3.3iw
WP_PW=hola


chown -R www-data:www-data /var/www/html/*
mkdir -p /run/php/
chown -R www-data:www-data /run/php/
sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/' /etc/php/7.3/fpm/pool.d/www.conf
curl -O https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz 
rm -rf latest.tar.gz
cp -f /var/www/html/wordpress/wordpress/* /var/www/html/wordpress/
rm -rf /var/www/html/wordpress/wordpress
chown -R www-data:www-data /var/www/html/wordpress/*
cd /var/www/html/wordpress
mv /wp-config.php /var/www/html/wordpress



#wp core download --allow-root

#wp config create --dbname=${WP_DB_NAME} --dbuser=${WP_USER_NAME} --dbpass=${WP_USE_PASSWD} --dbhost=mariadb --allow-root

#wp core install --url=mariadb --title=inception --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PW  --admin_email=$WP_ADMIN_EMAIL --allow-root


exec php-fpm7.3 -F -R

