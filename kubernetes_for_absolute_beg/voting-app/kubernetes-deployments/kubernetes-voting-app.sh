#Create voting-app
kubectl create -f voting-app-deploy.yaml
kubectl create -f voting-app-service.yaml

#Create Redis
kubectl create -f redis-deploy.yaml
kubectl create -f redis-service.yaml

#Create postgres
kubectl create -f postgres-deploy.yaml
kubectl create -f postgres-service.yaml

#Create worker-app
kubectl create -f worker-app-deploy.yaml

#Create result app
kubectl create -f result-app-deploy.yaml 
kubectl create -f result-app-service.yaml


# minikube service voting-service --url
minikube service --url
