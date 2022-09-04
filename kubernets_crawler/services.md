# Expose deployments
>  k expose deployment dep_name --port=8080 --target-port=80

# List services
> k get services | k get svc

# type of services
 # CLUSTER-IP: Is a internal service only to the cluster
   # IP address from this services is different from de ones the pods. It's a virtual ip address created by kubernets


      