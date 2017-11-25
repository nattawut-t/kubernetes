# eval $(minikube docker-env)
docker rmi -f authen-api:1.0.0
docker build -t authen-api:1.0.0 ../authen-api
# eval $(minikube docker-env -u)
