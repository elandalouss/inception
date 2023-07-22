#!/bin/bash


MYSQL_USER="aelandal"
MYSQL_PASSWD="aelandal123"
MYSQL_DB="aelandaldb"

service mysql start
#
#SCRIPT=$(cat <<EOT
#
#CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWD}';
#CREATE DATABASE IF NOT EXISTS ${MYSQL_DB};
#GRANT ALL PRIVILEGES ON ${MYSQL_DB}.* TO '${MYSQL_USER}'@'%';
#FLUSH PRIVILEGES;
#EOT
#)
#
#echo "${SCRIPT}" | mysql -u root

#service mysql start

mariadb -u root -e "CREATE DATABASE ${MYSQL_DB} ; CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWD}'; REQUIRE NOT REGEXP 'admin|Admin|administrator|Administrator'; GRANT ALL PRIVILEGES ON ${MYSQL_DB}.* TO '${MYSQL_USER}'@'%'; FLUSH PRIVILEGES; exec $@
