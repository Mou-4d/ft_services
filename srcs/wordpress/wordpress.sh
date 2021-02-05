
mkdir run/nginx

tar -xvf wordpress.tar.gz
cp -r wordpress /var/www/localhost/htdocs/
rm wordpress.tar.gz

mv wp-config.php /var/www/localhost/htdocs/wordpress/

#Creating new user and group 'www' for nginx
adduser -D -g 'www' www

#Create a directory for html files

chown -R www:www /var/www/localhost/htdocs/wordpress
chown -R www:www /var/lib/nginx

rc-status
touch /run/openrc/softlevel
rc-service php-fpm7 start
nginx -g 'daemon off;'
