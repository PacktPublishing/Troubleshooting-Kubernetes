# start one time job
kubectl run -i oneshot \
  --image=gcr.io/kuar-demo/kuard-amd64:1 \
  --restart=OnFailure \
  -- --keygen-enable \
     --keygen-exit-on-complete \
     --keygen-num-to-gen 10


# get details
kubectl describe jobs oneshot     

# get id of job from previous step
kubectl logs oneshot-v44vg
