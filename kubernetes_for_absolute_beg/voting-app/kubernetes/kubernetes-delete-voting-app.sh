#Create voting-app
kubectl delete -f voting-app-pod.yaml
kubectl delete -f voting-app-service.yaml

#Create Redis
kubectl delete -f redis-pod.yaml
kubectl delete -f redis-service.yaml

#Create postgres
kubectl delete -f postgres-pod.yaml
kubectl delete -f postgres-service.yaml

#Create worker-app
kubectl delete -f worker-app-pod.yaml

#Create result app
kubectl delete -f result-app-pod.yaml 
kubectl delete -f result-app-service.yaml


# minikube service voting-service --url
minikube service --url
