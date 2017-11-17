eval $(minikube docker-env)
docker rm -f authen-api
docker rmi -f authen-api:1.0.0
docker build -t authen-api:1.0.0 ../authen-api