adduser -D mouadz -G root && echo "mouadz:mouadz" | chpasswd
chown -R mouadz:root /etc/ssh

mv telegraf.conf /etc
openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=mydomain.com" -addext "subjectAltName=DNS:mydomain.com" -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt;
mv index.html /var/www/localhost/htdocs/
mv default.conf /etc/nginx/conf.d/default.conf

mkdir .ssh
mv authorized_keys .ssh/

rc-status
touch /run/openrc/softlevel
rc-service telegraf start
rc-service sshd start

mkdir run/nginx
nginx -g 'daemon off;'