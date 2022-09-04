# Set new image for the pods
 # syntax: k set image deployment dep_name container_name=new_image_name:version
> k set image deployment k8s-necomm-dep necomm=danstonebuilt/necomm:1.0.1

# See updates while kubernets dowload new images
> k rollout status deploy k8s-necomm-dep 

# Delete a pod for testing
> k delete pod k8s-necomm-dep-675db976f6-fc82t