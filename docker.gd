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
# -f --> with force
 $ docker rmi -f image_id
 
#-----------------------------------------------------# 
#Run a container in interative mode
 $ docker container run -it ubuntu bash | docker run -it ubuntu bash
 
 #Run a named container in interative mode
 $ docker container run -it --name cont_name ubuntu bash | docker run -it --name cont_name ubuntu bash 
 
 #Run a named container in interative mode with seldestruction on exit
 $ docker container run -it --name cont_name --rm ubuntu bash | docker run -it --name cont_name --rm ubuntu bash

 #Run in detached way
 $ docker run -d cont_name
 
 #Exit the container
 $ exit

 #Stop a container
 $ docker stop cont_name|cont_id
 
 #Restart a container
 $ docker start container -ai container_id
 
 #List a container in execution
 $ docker ps
 
 #List all containers
 $ docker ps -a
 
 #Remove a container
 $ docker rm docker_id

 #Remove with force(in execution)
 $ docker rm -f container_id(3_first_leters)

#--------------------------------------------------#
/*Volumes*/ 

#Map volume
 #ex: -v mysql-db:/var/lib/mysql:ro
 #mysql-db: named volume in docker host
 #mysql-db:/var/lib/mysql: directory inside the constainer
 #ro: optional field, just to inform is it is read only(ro) or read write(rw). Standard is rw

 #Mount syntax
 #ex: --mount 'type=volume,source=mysql-db,target=var/lib/mysql,readonly'

 #Bind volumes
 #ex: -v $(pwd)/var/lib/mysql:ro
 
 #Mount syntax
 #ex: --mount 'type=volume,source=$(pwd)/mysql,target=var/lib/mysql,readonly'

 /*List volumes*/
 $ docker volume ls

 #Remove volumes
 $ docker volume prune

 #Create named volume
 $ docker volume create volume_name

 #Inspect volume
 $ docker volume inspect volume_name
  
 #Mapping volume complete
 $ docker run -d --name container_name -v volume_name:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=password mysql
#------------------------------------------------------#
 #Buid an image
 #t --> parameter or image name
 #. --> current folder
 $ docker build -t image_name:version . 
 

