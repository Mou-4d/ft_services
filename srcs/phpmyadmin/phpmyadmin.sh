mkdir run/nginx

wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz
tar -xvf phpMyAdmin-5.0.2-all-languages.tar.gz
rm phpMyAdmin-5.0.2-all-languages.tar.gz


nginx -g 'daemon off;'