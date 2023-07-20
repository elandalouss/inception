

/etc/init.d/php7.3-fpm start;

sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/' /etc/php/7.3/fpm/pool.d/www.conf
cp -r wordpress/* /var/www/html/aelandal_db;
cd /var/www/html/aelandal_db
chown -R root:root *

php-fpm7.3 -F;
