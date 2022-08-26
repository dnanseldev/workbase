# To see your imagem from your registry
 $ curl -X GET http://localhost:5000/v2/_catalog

# Change the image tag
 > docker tag image_name:version localhost:5000/image_name:version
 > Ex: docker tag guided_linux localhost:5000/guided_linux:1.00

 # To send your imagem to your registry
  > docker push localhost:5000/guided_linux:1.00
