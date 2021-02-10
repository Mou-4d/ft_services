cp mariadb-server.cnf etc/mysql/my.cnf
mkdir -p /var/lib/mysql /run/mysqld

/usr/bin/mysql_install_db --datadir=/var/lib/mysql

exec /usr/bin/mysqld -u root & sleep 5

#CREATE USER
mysql -u root -e "CREATE USER 'mouadz'@'%' IDENTIFIED BY 'dev';GRANT ALL PRIVILEGES ON * . * TO 'mouadz'@'%';FLUSH PRIVILEGES;"
#CREATE DATABASE
mysql -u root -e "CREATE DATABASE wp_db;GRANT ALL PRIVILEGES ON wp_db.* TO 'mouadz'@'%' IDENTIFIED BY 'dev';FLUSH PRIVILEGES;"
mysql -u root wp_db < /wordpress_db.sql

mysql -u root -e "CREATE DATABASE phpmyadmin_db;GRANT ALL PRIVILEGES ON phpmyadmin_db.* TO 'mouadz'@'%' IDENTIFIED BY 'dev';FLUSH PRIVILEGES;"
mysql -u root phpmyadmin_db < /phpmyadmin.sql

mv telegraf.conf etc/

rc-status
touch /run/openrc/softlevel
rc-service telegraf start

#keep container running
sleep infinity
