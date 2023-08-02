#!/bin/bash

service mysql start

mysql -u root -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DB};"
mysql -u root -e "CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWD}';"
mysql -u root -e "GRANT ALL PRIVILEGES ON ${MYSQL_DB}.* TO '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWD}';"
mysql -u root -e "FLUSH PRIVILEGES;"

service mysql stop
mysqld

exec $@

