
mkdir run/nginx

wget http://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
rm latest.tar.gz
cp -r wordpress /var/www/localhost/htdocs/
rm -rf wordpress
mv wp-config.php /var/www/localhost/htdocs/wordpress/


rc-status
touch /run/openrc/softlevel
rc-service php-fpm7 start
nginx -g 'daemon off;'

