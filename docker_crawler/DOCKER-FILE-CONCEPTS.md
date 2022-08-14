#FROM
-->The image template base

#COPY
-->Same command from linux

#ADD
-->Do the same as copy command but adds extra functionality such as download resources from links, referencing a remote file.
-->Another feature it has is it unpack TAR files as well. Ex: ADD classes.tar.gz /app/some_folder/

#RUN
-->Is an image build step, the state of the container after a RUN command will be committed to the container image.
   A Dockerfile can have many RUN steps that layer on top of one another to build the image.
   
   RUN instruction allows you to install your application and packages required for it.
   It executes any commands on top of the current image and creates a new layer by committing the results.
   Often you will find multiple RUN instructions in a Dockerfile.
   
#CMD
-->Is the command the container executes by default when you launch the built image.
   A Dockerfile will only use the final CMD defined.
   Obs: The CMD can be overridden when starting a container with docker run $image $other_command.
   
   Is a Process-command-base executes only in container not in image montage
   
   CMD instruction allows you to set a default command, which will be executed only when you run container without specifying a command.
   If Docker container runs with a command, the default command will be ignored. If Dockerfile has more than one CMD instruction, all but last
   CMD instructions are ignored.
   OBS: CMD Duplicates are Allowed but Wasteful

#ENTRYPOINT
-->Is also closely related to CMD and can modify the way a container is started from an image.
   Obs: If CMD command exists it will come in as a parameter to ENTRYPOINT command
   Ex: CMD["/app"]
       ENTRYPOINT["ls"]
   The same as CMD["ls /app"]
   
#WORKDIR
-->the root of the container
   EX: /app
   
#ENV
-->Creates environment variables
   Ex: MY_APPLICATION=bundle.js
       COPY $MY_APPLICATION /app

#EXPOSE
-->Exposes a port within a container when it is started
   EX: 8080, this way i can access this port external to the container itself

#---------------------Samples--------------------------------------------------
RUN - Install Python , your container now has python burnt into its image
CMD - python hello.py , run your favourite script

#Complete sample Dockerfile

FROM openjdk

RUN mkdir -p /app/classes

ENV APP_NAME=product.jar

COPY ${APP_NAME} /app/classes/

EXPOSE 8081

ENTRYPOINT["java", "-jar", "/app/classes/product.jar"]
#---------------------------------------
# Build the image
$ docker build -t i_application:1.00 .

# Run the container mapping local port 8080 from the computer to the one the container 8081 with image_name
$ docker run -p 8080:8081 i_aplication:1.00



