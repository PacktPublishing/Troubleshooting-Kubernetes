# get daemonset
kubectl get daemonset

# Use this spec in your DaemonSet
spec:
  updateStrategy:
    type: RollingUpdate
    rollingUpdate:
      maxUnavailable: 2
      minReadySeconds: 30

# rollout the daemonset
kubectl rollout status ds/norootsquash

# get daemonset
kubectl get daemonset

# Delete
kubectl delete -f daemonset.yaml