# Static pod creation exercise:
kubectl run static-busybox --image=busybox --dry-run=client -o yaml --command -- sleep 1000 > static-busybox.yaml

# Check "--pod-manifest-path" of the kubelet.service by looking for the file: /var/lib/kubelet/config.yaml
# Inside that file, find the parameter: "staticPodPath". That is the path that kubelet uses the manifest files to deploy static pods.
# default path is /etc/kubernetes/manifests
mv static-busybox.yaml /etc/kubernetes/manifests
