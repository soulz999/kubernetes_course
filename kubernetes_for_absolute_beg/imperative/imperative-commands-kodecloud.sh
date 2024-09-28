kubectl run nginx-pod --image=nginx:alpine --dry-run=client -o yaml >> nginx-pod.yaml

kubectl run redis --image=redis:alpine --labels="tier=db,app=redis" --dry-run=client -o yaml > redis.yaml

kubectl create service nodeport redis-service --tcp=6379:6379 --node-port=30200 --dry-run=client -o yaml > redis-service.yaml
#need to edit the name for "redis"

kubectl run custom-nginx --image=nginx --port=8080 --dry-run=client -o yaml > custom-nginx.yaml

kubectl create ns dev-ns --dry-run=client -o yaml > dev-ns.yaml

kubectl -n dev-ns create deployment redis-deploy --image=redis --replicas=2 --dry-run=client -o yaml > redis-deploy.yamli


kubectl run httpd --image=httpd:alpine --dry-run=client -o yaml > httpd.yaml
# change the label to "app: httpd"
kubectl create service clusterip httpd --tcp=80:80 --dry-run=client -o yaml > httpd-service.yaml

