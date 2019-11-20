# create pod with memory limit
kubectl apply -f memory_limit.yaml 

# get running pod
kubectl get pod memory-demo

# view details about memory (see resources section)
kubectl get pod memory-demo --output=yaml

# remove memory-demo pod
kubectl delete pod memory-demo
