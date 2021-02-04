mkdir -p /var/lib/mysql /run/mysqld/

mysql_install_db -u root --datadir=/var/lib/mysql > /dev/null

mysql -u root -e "CREATE DATABASE wp_db;CREATE USER 'admin'@'%' IDENTIFIED BY 'admin';GRANT ALL PRIVILEGES ON * . * TO 'admin'@'%';FLUSH PRIVILEGES;"

supervisord -c /etc/supervisord.conf
