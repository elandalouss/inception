#!/bin/bash


MYSQL_USER="aelandal"
MYSQL_PASSWD="aelandal911"
MYSQL_DB="aelandaldb"




service mysql start


#service mysql restart

#SCRIPT=$(cat <<EOT
#CREATE DATABASE IF NOT EXISTS ${MYSQL_DB};
#CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWD}';
#GRANT ALL PRIVILEGES ON ${MYSQL_Db}.* TO '${MYSQL_USER}'@'%';
#FLUSH PRIVILEGES;
#EOT
#)


#SCRIPT=$(cat <<EOT
#CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWD}';
#CREATE DATABASE ${MYSQL_Db};
#GRANT ALL PRIVILEGES ON ${MYSQL_DB}.* TO '${MYSQL_USER}'@'%';
#FLUSH PRIVILEGES;
#EOT
#)

#echo "${SCRIPT}" | mysql -u root


# Create a script file, e.g., create_db_user.sql
#cat <<EOT > mysql.sql
#CREATE DATABASE IF NOT EXISTS ${MYSQL_DB};
#CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWD}';
#GRANT ALL PRIVILEGES ON ${MYSQL_DB}.* TO '${MYSQL_USER}'@'%';
#FLUSH PRIVILEGES;
#EOT
mysql -u root -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DB;"
mysql -u root -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWD';"
mysql -u root -e "GRANT ALL PRIVILEGES ON $MYSQL_DB.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWD';"
mysql -u root -e "FLUSH PRIVILEGES;"


#mysql -u root < mysql.sql
#service mysql stop

mysqld

# Execute the script using the MariaDB command-line interface


