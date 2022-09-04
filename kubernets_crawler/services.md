# Expose deployments
>  k expose deployment dep_name --port=8080 --target-port=80

# Expose deployments of type service NodePort
# -> This service allows to connect externally by de ip of node machine and port exposed by the kubernets: Ex: minukube_ip:kubernet_random_port -->  http://192.168.59.100:31117
 # k expose deployment dep_name --type=NodePort --port=3000
> k expose deployment  k8s-necomm-dep --type=NodePort --port=5000

# Fire minikube services
 # minikube service dep_name
> minikube service k8s-necomm-dep

|-----------|----------------|-------------|-----------------------------|
| NAMESPACE |      NAME      | TARGET PORT |             URL             |
|-----------|----------------|-------------|-----------------------------|
| default   | k8s-necomm-dep |        5000 | http://192.168.59.100:31117 |
|-----------|----------------|-------------|-----------------------------|
🎉  Opening service default/k8s-necomm-dep in default browser...

# List services
> k get services | k get svc

# type of services
 # CLUSTER-IP: Is a internal service only to the cluster
   # IP address from this services is different from de ones the pods. It's a virtual ip address created by kubernets

# Delete servicecs
 # k delete svc service_name
> k delete svc k8s-necomm-dep

      