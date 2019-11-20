# create pod with cert and key
kubectl create secret generic app-tls --from-file=app.cert --from-file=app.key
# describe the app certs
kubectl describe secrets app-tls
# get all running secret serives
kubectl get secrets
