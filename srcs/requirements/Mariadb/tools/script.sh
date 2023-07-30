#!/bin/bash

MYSQL_USER="aelandal"
MYSQL_PASSWD="aelandal911"
MYSQL_DB="aelandal_db"
service mysql start

mysql -u root -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DB;"
mysql -u root -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWD';"
mysql -u root -e "GRANT ALL PRIVILEGES ON $MYSQL_DB.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWD';"
mysql -u root -e "FLUSH PRIVILEGES;"

exec $@

