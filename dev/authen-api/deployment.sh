kubectl get deployments
# kubectl get deployment -o yaml
# 
kubectl delete deployment authen-api
# kubectl delete -f dev/authen-api/deployment.yaml
# kubectl delete --all deployments
# 
kubectl apply -f dev/authen-api/deployment.yaml
# kubectl create --save-config -f dev/authen-api/deployment.yaml
# kubectl replace -f dev/authen-api/deployment.yaml
