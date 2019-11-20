kubectl create -f custom-dns.yaml
# see DNS registered within the container
kubectl exec -it dns-example-service -- cat /etc/resolv.conf

# describe
kubectl describe pods dns-example-service

# get logs
kubectl logs dns-example-service