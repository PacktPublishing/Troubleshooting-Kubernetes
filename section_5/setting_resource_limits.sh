# scale number of replicas
kubectl scale rs frontend --replicas=1
# autoscaling based on the cpu usage - if the cpu on any of the instances is used on > 80% the add additional instance
kubectl autoscale rs frontend --min=2 --max=5 --cpu-percent=80
# get autoscaling options
kubectl get hpa

