adduser -D mouadz -G root && echo "mouadz:mouadz" | chpasswd
chown -R mouadz:root /etc/vsftpd

openssl req -new -newkey rsa:2048 -nodes -days 365 -x509 -subj "/C=CA/ST=QC/O=Company, Inc./CN=mydomain.com" -keyout /etc/ssl/private/vsftpd.key -out /etc/ssl/certs/vsftpd.crt

mv vsftpd.conf /etc/vsftpd/


mv telegraf.conf etc/
rc-status
touch /run/openrc/softlevel
rc-service telegraf start

/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf
