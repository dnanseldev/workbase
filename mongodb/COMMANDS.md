# Remove all images and container
$ docker-compose down

# Run compose in detached mode
$ docker-compose up -d

# Stop services
$ docker-compose stop

# Start a stopped service
$ docker-compose start

#------------------------------------------
#Mongo user setup/login
#Obs "mongodb" is the service name form docker-compose file
mongo mongodb://localhost:27017 -u rootuser -p rootpass
