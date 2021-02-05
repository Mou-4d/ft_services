mkdir -p /var/lib/mysql /run/mysqld

/usr/bin/mysql_install_db --datadir=/var/lib/mysql

exec /usr/bin/mysqld -u root & sleep 5

#create wp database and user
mysql -u root -e "CREATE DATABASE wp_db;CREATE USER 'admin'@'%' IDENTIFIED BY 'admin';GRANT ALL PRIVILEGES ON * . * TO 'admin'@'%';FLUSH PRIVILEGES;"

#keep container running
sleep infinity
