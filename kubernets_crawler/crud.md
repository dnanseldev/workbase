# Deployment is an abstraction over Pods
# Create a deployment
> kubectl create deployment dep_name --image=image_name
>$ kubectl create deployment dpl-personal --image=localhost:5000/guided_linux

# See deployments
> kubectl get deployment

# See replicasets
>$ kubectl get replicaset

# Edit deployment
> kubectl edit deployment dep-name

# Debugging deployment
> kubectl logs dep-name

# Debugging in interactive way
> kubectl exec -it dep-name -- bin/bash

# Delete a deployment
> kubectl delete deployment dep-name

# Run deployments by file_configuration
> kubectl apply -f config-file.yaml