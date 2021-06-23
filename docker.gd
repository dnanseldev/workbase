#Criar o grupo docker.
 $ sudo groupadd docker

#Adicionar o usuário atual ao grupo docker.
 $ sudo usermod -aG docker $USER

#List primary groups
 $ groups

#List all groups
 $ cat|less /etc/group | getent group
#------------------------------------------------#
#See all images
 $ docker images
 
#Get last version of an image
 $ docker pull image_name
 
#Search an specific image
 $ docker search image_name
 
#Remove an image
 $ docker rmi image_id
 
#-----------------------------------------------------# 
#Run a container in interative mode
 $ docker container run -it ubuntu bash | docker run -it ubuntu bash
 
 #Run a named container in interative mode
 $ docker container run -it --name cont_name ubuntu bash | docker run -it --name cont_name ubuntu bash 
 
 #Run a named container in interative mode with seldestruction on exit
 $ docker container run -it --name cont_name --rm ubuntu bash | docker run -it --name cont_name --rm ubuntu bash
 
 #Exit the container
 $ exit
 
 #Restart a container
 $ docker start container -ai container_id
 
 #List a container in execution
 $ docker ps
 
 #List all containers
 $ docker ps -a
 
 #Remove a container
 $ docker rm docker_id
 
 
 
