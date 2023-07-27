FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server

#COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/
#RUN chown mysql:mysql /etc/mysql/mariadb.conf.d/50-server.cnf
#RUN chmod 644 /etc/mysql/mariadb.conf.d/50-server.cnf

RUN sed -i 's/bind-address = 127.0.0.1/bind-address = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf

#RUN chown -R mysql:mysql /var/lib/mysql
#RUN chmod 777 /var/lib/mysql/

#RUN mkdir -p /var/run/mysqld/
#RUN chown -R mysql:mysql /var/run/mysqld
#RUN chmod 777 /var/run/mysqld/

COPY tools/script.sh /
RUN chmod +x /script.sh

EXPOSE 3306

#ENTRYPOINT [ "./script.sh" ]

CMD ["./script.sh"]

