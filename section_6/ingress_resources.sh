# get service
kubectl get services my-service
# describe service (get node port from NodePort:) and ( IP: )                      
kubectl describe services my-service

# get Ip of hello-world instance (for example 172.17.0.17)
kubectl get pods --output=wide

# use IP:NodePort
curl http://172.17.0.17:30366

# clean up
kubectl delete services my-service

kubectl delete deployment hello-world



