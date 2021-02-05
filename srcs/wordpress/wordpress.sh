mv index.html /var/www/localhost/htdocs/
mv default.conf /etc/nginx/conf.d/default.conf

mkdir run/nginx


tar -xvf wordpress.tar.gz
cp -r wordpress /var/www/html/
rm wordpress.tar.gz

nginx -g 'daemon off;'
