mv telegraf.conf etc/
rc-status
touch /run/openrc/softlevel
rc-service vsftpd start
rc-service telegraf start
sleep infinity
