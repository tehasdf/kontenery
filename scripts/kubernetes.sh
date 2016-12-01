minikube start \
    --network-plugin=cni \
    --container-runtime=rkt \
    --iso-url=http://storage.googleapis.com/minikube/iso/buildroot/minikube-v0.0.6.iso

kubectl get nodes
minikube ssh

kubectl run nginx --image=nginx
kubectl get pods

minikube dashboard
minikube ip
