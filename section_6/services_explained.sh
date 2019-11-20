kubectl apply -f service_lb.yaml

# get info about deployement
kubectl get deployments hello-world
kubectl describe deployments hello-world

# info about replicas
kubectl get replicasets
kubectl describe replicasets

# create custom Service that eposes this deployement
kubectl expose deployment hello-world --type=LoadBalancer --name=my-service

# get info about service
kubectl get services my-service
