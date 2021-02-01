minikube delete
minikube start --vm-driver=virtualbox


eval $(minikube -p minikube docker-env)
# kubectl delete deploy nginx-deployment
#build all images
docker build -t mynginx srcs/nginx/


#apply  yaml files for each deplyomenet
kubectl apply -f srcs/nginx/nginx.yml
