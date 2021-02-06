
mkdir run/nginx

wget http://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
rm latest.tar.gz
mv wordpress /var/www/localhost/htdocs/
mv wp-config.php /var/www/localhost/htdocs/wordpress/


rc-status
touch /run/openrc/softlevel
rc-service php-fpm7 start 
nginx -g 'daemon off;'

