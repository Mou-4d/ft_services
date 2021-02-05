minikube delete
minikube start --vm-driver=virtualbox


eval $(minikube -p minikube docker-env)

#build all images
docker build -t nginx srcs/nginx/
docker build -t mysql srcs/mysql/
docker build -t wordpress srcs/wordpress/
# docker build -t phpmyadmin srcs/phpmyadmin/

kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
kubectl apply -f srcs/configMap.yml

#apply  yaml files
kubectl apply -f srcs/nginx/nginx.yml
kubectl apply -f srcs/mysql/mysql.yml
kubectl apply -f srcs/wordpress/wordpress.yml
# kubectl apply -f srcs/phpmyadmin/phpmyadmin.yml
