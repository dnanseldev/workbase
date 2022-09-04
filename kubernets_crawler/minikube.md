# Install minikube
$ curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
 > $ sudo dpkg -i minikube_latest_amd64.deb

# Start your cluster
> minikube start --driver=virtualbox 
> minikube start --driver=vmware

# Stop minikube
> minikube stop

# Remove a cluster
> minikube delete

# See status
> minikube status

# -------------------Connect to kubernets Server------------------------------------

# See Ip Server
$ minikube ip

# Connect remotelly to Minikube Server
$ ssh docker@<IP> 
--> Ex: Local Ip from previuns command ssh docker@192.168.59.100
--> Username: docker Password: tcuser

# Exit Connection
 $ exit

# minikube dashboard
> minikube dashboard

