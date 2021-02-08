
wget https://dl.grafana.com/enterprise/release/grafana-enterprise-7.4.0.linux-amd64.tar.gz

tar -xvf grafana-enterprise-7.4.0.linux-amd64.tar
rm grafana-enterprise-7.4.0.linux-amd64.tar

cd /grafana-7.4.0/bin ; ./grafana-server

sleep infinity