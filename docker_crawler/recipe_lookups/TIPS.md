#Obs:nAlways when a docker-compose file has its name diferent ex: docker-compose.dev.yml, the command for building must especify its name as follow:
> $ docker compose -f docker-compose.dev.yml up -d

#cria e inicia os contêineres;
> $ docker compose up -d

#realiza apenas a etapa de build das imagens que serão utilizadas
> $ docker compose build

#visualiza os logs dos contêineres;
> $ docker compose logs

#reinicia os contêineres
> $ docker compose restart

#lista os contêineres
> $ docker compose ps 

#permite aumentar o número de réplicas de um contêiner
> $ docker compose scale

#inicia os contêineres
> $ docker compose start

#paralisa os contêineres
> $ docker compose stop

#paralisa e remove todos os contêineres e seus componentes como rede, imagem e volume.
> docker compose down

#Remover containers junto com volumes
> $ docker compose down --volumes
