FROM debian:buster

RUN apt-get update && apt-get install -y curl php7.3 \
	php7.3-fpm php7.3-mysql mariadb-client nginx

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar ;\
	chmod +x wp-cli.phar ;\
	mv wp-cli.phar /usr/local/bin/wp ;\
	mkdir -p /var/www/html/aelandal_db/
	
#ARG WP_DB_NAME WP_USER_NAME WP_USE_PASSWD WP_DB_HOS

WORKDIR /var/www/html/aelandal_db

RUN curl -O https://wordpress.org/latest.tar.gz ;\
	tar -xzvf latest.tar.gz ;\
	rm latest.tar.gz 

COPY scripts/script.sh /

RUN chmod +x /script.sh

EXPOSE 9000

CMD ["sh", "/script.sh"]


