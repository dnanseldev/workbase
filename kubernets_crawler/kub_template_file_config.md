# Each configuration file has 3 parts
# First 2 lines is version and the type
# Ex: apiVersion: apps/v1 kind: Deployment | Service
> 1 - metadata
> 2 - specification
> 3 - status

# Run a file configuration
> kubectl apply -f config-file.yaml

# Delete file configuration
> kubectl delete -f file_name.yaml