FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server

ARG MYSQL_ROOT_PASSWD MYSQL_DB MYSQL_USER MYSQL_PASSWD

#to check if mariadb server is lisenning to all ip addresses 
#ss -tuln | grep 3306
COPY tools/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY tools/db_script.sh /

RUN chmod +x db_script.sh

RUN mkdir -p /var/run/mysqld

RUN chmod -R 777 /var/run/mysqld

 
CMD ./db_script.sh

EXPOSE 3306

CMD mysqld
