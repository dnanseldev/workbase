# Criar o grupo docker.
 $ sudo groupadd docker

# Adicionar o usuário atual ao grupo docker.
 $ sudo usermod -aG docker $USER

# List primary groups
 $ groups

# List all groups
 $ cat|less /etc/group | getent group
# ------------------------------------------------#
# See all images
 $ docker images
 
# Get last version of an image
 $ docker pull image_name
 
# Search an specific image
 $ docker search image_name

# Inspect image
> docker inspect image_name
 
# Remove an image
# -f --> with force
 $ docker rmi -f image_id
 
# -----------------------------------------------------# 
# Run a container in interative mode
 $ docker container run -it ubuntu bash | docker run -it ubuntu bash
 
 # Run a named container in interative mode
 $ docker container run -it --name cont_name ubuntu bash | docker run -it --name cont_name ubuntu bash 
 
 # Run a named container in interative mode with seldestruction on exit
 $ docker container run -it --name cont_name --rm ubuntu bash | docker run -it --name cont_name --rm ubuntu bash

 # Run in detached way
 $ docker run -d cont_name
 
 # Exit the container
 $ exit

 # Stop a container
 $ docker stop cont_name|cont_id
 
 # Start a container(works only in interactive mode -a or -ti)
 $ docker start -ai container_name|container_id

 # Restart a container
 $ docker restart my_container

 # Exec a container(works only with container in exection)
 $ docker exec -it container_name comand_name
 
 # List a container in execution
 $ docker ps
 
 # List all containers
 $ docker ps -a
 
 # Remove a container
 $ docker rm docker_id

 # Remove with force(in execution)
 $ docker rm -f container_id(3_first_leters)

#--------------------------------------------------#
/*Volumes*/ 

# Map volume
 # ex: -v mysql-db:/var/lib/mysql:ro
 # mysql-db: named volume in docker host
 # mysql-db:/var/lib/mysql: directory inside the constainer
 # ro: optional field, just to inform is it is read only(ro) or read write(rw). Standard is rw

 # Mount syntax
 # ex: --mount 'type=volume,source=mysql-db,target=var/lib/mysql,readonly'

 # Bind volumes
 # ex: -v $(pwd)/var/lib/mysql:ro
 
 # Mount syntax
 # ex: --mount 'type=volume,source=$(pwd)/mysql,target=var/lib/mysql,readonly'

 /*List volumes*/
 $ docker volume ls

 # Remove volumes
 $ docker volume prune

 # Create named volume
 $ docker volume create volume_name

 # Inspect volume
 $ docker volume inspect volume_name
  
 # Mapping volume complete
 $ docker run -d --name container_name -v volume_name:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=password mysql
# ------------------------------------------------------#
 # Buid an image
 # t --> parameter or image name
 #. --> current folder
 $ docker build -t image_name:version . 
# -------------------------------------------------------#
# Network 
# List type of network
 $ docker network ls

# Isolated container
 $ docker run -d --net none image_name:tag_version
 #ex: docker run -d --net none alpine:latest

# Inspect type of network
 $ docker network inspect bridge

# Create a new network
 $ docker network create --driver bridge net_name

# Put a container into a rede
 $ docker run -d --name container_name network_name image_name comand_name
 # Ex: docker run -d --name container3 new_net alpine sleep 1000

# Connect a container into a different network
 $ docker network connect brigde container_name
 #Ex: docker network connect bridge container3
 
# Disconnect a container from a network
 $ docker network disconnect dridge container_name
 #Ex: docker network disconnect bridge container_name

 
