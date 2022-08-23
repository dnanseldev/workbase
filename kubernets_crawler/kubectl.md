# See cluster info
$ kubectl cluster-info

# See nodes
$ kubectl get nodes

# See pods
-->$ kubectl get pods | kubectl get pods -O wide
-->Obs: If there are several containers in the pod they will share the same IP address

# See namespaces
$ kubectl get namespaces
-->Obs: Usually pods are created in defaut namespaces
-->See pods running in others namespaces
   $ kubectl get pods --namespace=kube-system
-->Obs: In order to connect to pods in kubernets it's necessary to expose them as services.

# Create alias for kubectl command
$ alias k="kubectl"



