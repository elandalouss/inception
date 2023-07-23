#!/bin/bash


MYSQL_USER="aelandal"
MYSQL_PASSWD="aelandal123"
MYSQL_DB="aelandaldb"

service mysql start

#SCRIPT=$(cat <<EOT

#CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWD}';
#CREATE DATABASE IF NOT EXISTS ${MYSQL_DB};
#GRANT ALL PRIVILEGES ON ${MYSQL_DB}.* TO '${MYSQL_USER}'@'%';
#FLUSH PRIVILEGES;
#EOT
#)

#echo "${SCRIPT}" | mysql -u root

#exec $@
#service mysql start

#mariadb -u root -e "CREATE DATABASE aelandaldb ; CREATE USER 'aelandal'@'%' IDENTIFIED BY 'aelandal123'; REQUIRE NOT REGEXP 'admin|Admin|administrator|Administrator'; GRANT ALL PRIVILEGES ON aelandaldb.* TO 'aelandal'@'%'; FLUSH PRIVILEGES"

mariadb -u root -e "CREATE DATABASE aelandaldb; CREATE USER 'aelandal'@'%' IDENTIFIED BY 'aelandal123'; GRANT ALL PRIVILEGES ON aelandaldb.* TO 'aelandal'@'%';  FLUSH PRIVILEGES;"

exec $@
