mkdir run/nginx

wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz
tar -xvf phpMyAdmin-5.0.2-all-languages.tar.gz
rm phpMyAdmin-5.0.2-all-languages.tar.gz
mv phpMyAdmin-5.0.2-all-languages /var/www/localhost/htdocs/phpmyadmin
mv config.inc.php /var/www/localhost/htdocs/phpmyadmin/


rc-status
touch /run/openrc/softlevel
rc-service php-fpm7 start 
nginx -g 'daemon off;'