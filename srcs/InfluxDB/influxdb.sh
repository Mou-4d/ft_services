
mv telegraf.conf etc/

rc-status
touch /run/openrc/softlevel
rc-service influxdb start
rc-service telegraf start
sleep infinity
