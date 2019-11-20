# start service a 
kubectl run service-a-prod --image=gcr.io/kuar-demo/kuard-amd64:1 --replicas=3 --port=8008 --labels="ver=1,app=a,env=prod"
# expose service a
kubectl expose deployment service-a-prod
# start service b
kubectl run service-b-prod --image=gcr.io/kuar-demo/kuard-amd64:1 --replicas=2 --port=8008 --labels="ver=3,app=b,env=prod"
# expose service b
kubectl expose deployment service-b-prod
# get all exposed services
kubectl get services -o wide
# lookup service via the label
kubectl get pods -l app=a -o jsonpath='{.items[0].metadata.name}'