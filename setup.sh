minikube delete
minikube start --vm-driver=virtualbox


eval $(minikube -p minikube docker-env)

#build all images
docker build -t nginx srcs/nginx/
docker build -t mysql srcs/mysql/
docker build -t wordpress srcs/wordpress/
docker build -t phpmyadmin srcs/phpmyadmin/
docker build -t influxdb srcs/influxdb/
docker build -t grafana srcs/grafana/
docker build -t ftps srcs/ftps/

kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
kubectl apply -f srcs/configMap.yml

#apply  yaml files
kubectl apply -f srcs/nginx/nginx.yml
kubectl apply -f srcs/mysql/mysql.yml
kubectl apply -f srcs/wordpress/wordpress.yml
kubectl apply -f srcs/phpmyadmin/phpmyadmin.yml
kubectl apply -f srcs/influxdb/influxdb.yml
kubectl apply -f srcs/grafana/grafana.yml
kubectl apply -f srcs/ftps/ftps.yml

ssh-keygen -R 192.168.99.103