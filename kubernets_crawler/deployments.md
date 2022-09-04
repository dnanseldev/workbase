# Create deployments
 $ kubectl create deployment dep-name --image=image_name

# See deployments
 $ k get deployments

# Describe deployment
 $ k describe deployment dep-name

# Obs: Pods and Deployments are separeted objects
# Pods are managed by deployments

# Expose deployments
# Obs --port is optional e refers to external port from the deployment and --target-port refers to the internal port of thecontainer
> k expose deployment dep-name --port=8080 --target-port=80
