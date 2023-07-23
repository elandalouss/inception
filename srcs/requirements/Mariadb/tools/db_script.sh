#!/bin/bash


MYSQL_USER="aelandal"
MYSQL_PASSWD="aelandal123"
MYSQL_DB="aelandaldb"


service mysql start


mariadb -u root -e "CREATE DATABASE aelandaldb; CREATE USER 'aelandal'@'%' IDENTIFIED BY 'aelandal123'; GRANT ALL PRIVILEGES ON aelandaldb.* TO 'aelandal'@'%';  FLUSH PRIVILEGES;"

exec $@

