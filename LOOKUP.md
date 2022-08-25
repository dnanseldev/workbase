# Oficial
 $ docker build --network=host -t guided_linux .

# Run a container in interactive mode and volume
 > docker run -it --name cont_name -v /usr/app --rm image_name bash
 > docker run -it --name cguided_linux -v $(pwd):/home/Guides --rm guided_linux bash