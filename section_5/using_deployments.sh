# change version of the image used for deployment
kubectl --record deployment.apps/nginx-deployment set image deployment.v1.apps/nginx-deployment nginx=nginx:1.9.1

# see the rolling deployement status
kubectl rollout status deployment.v1.apps/nginx-deployment

# get replica set and see that new version has 3 instances but old one has 0
kubectl get rs

# get pods
kubectl get pods

# describe and analyze RollingUpdateStrategy:  25% max unavailable, 25% max surge
kubectl describe deployments
