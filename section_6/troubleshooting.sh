# create pod for tests
kubectl run hostnames --image=k8s.gcr.io/serve_hostname \
                        --labels=app=hostnames \
                        --port=9376 \
                        --replicas=3

# see that all pods are running
kubectl get pods -l app=hostnames

# see that service is exposed (not found at this point)
kubectl get svc hostnames

# expose deployement on specific port
kubectl expose deployment hostnames --port=80 --target-port=9376

# see that service is now exposed
kubectl get svc hostnames
