# Create a deployment
> k create deployment k8s-guided-linux-dep --image=danstonebuilt/guided_linux

# Appying configurations in declarative aproach
> kubectl apply -f deployment.yaml |
> k apply -f deployment.yaml
> k apply -f service.yaml 

# Delete deployments and services configured by files
> k delete -f deployment.yaml -f service.yaml

# Set namespace to context
> kubectl config set-context --current --namespace=default