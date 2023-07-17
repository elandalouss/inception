FROM debian:buster

RUN apt-get update && apt-get install nginx -y && apt-get install openssl -y

COPY conf/ /etc/nginx/conf.d/

RUN mkdir /etc/nginx/ssl

WORKDIR /etc/nginx/ssl

RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
	-out /etc/nginx/ssl/aelandal_cert.crt \
	-keyout /etc/nginx/ssl/aelandal_private.key \
	-subj "/C=MA/ST/Bng/L=Beg/O=42 School/OU=aelandal/CN=aelandla/"

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
