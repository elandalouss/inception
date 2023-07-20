FROM debian:buster

RUN apt-get update && apt-get install curl -y && apt-get install php-fpm -y 

RUN curl -O https://wordpress.org/latest.tar.gz ;\
	tar -xzvf latest.tar.gz ;\
	rm latest.tar.gz ;\
	mkdir -p /var/www/html/aelandal_db

COPY script.sh ./

CMD ["sh", "script.sh"]
#CMD /etc/init.d/php8.2-fpm start;


#WORKDIR /usr/share/nginx/html/wordpress/

