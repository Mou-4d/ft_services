minikube delete
minikube start --vm-driver=virtualbox


eval $(minikube -p minikube docker-env)
# kubectl delete deploy nginx-deployment

#build all images
docker build -t mynginx srcs/nginx/

kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
kubectl apply -f srcs/configMap.yml

#apply  yaml files for each deplyomenet
kubectl apply -f srcs/nginx/nginx.yml


# CREATE DATABASE wordpress;
# CREATE USER 'wordpressuser'@'localhost' IDENTIFIED BY '1234';
# GRANT ALL ON wordpress.* TO 'wordpressuser'@'localhost' IDENTIFIED BY '1234' WITH GRANT OPTION;
# FLUSH PRIVILEGES;