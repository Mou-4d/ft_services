mv index.html /var/www/localhost/htdocs/
mv default.conf /etc/nginx/conf.d/default.conf

mkdir run/nginx
nginx -g 'daemon off;'
