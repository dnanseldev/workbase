#-----DEVELOPMENT ENVIRONMENT------------
FROM node:18-alpine3.15 as development

RUN apk update && apk upgrade 
RUN apk add bash
RUN apk add vim
RUN apk add gedit

WORKDIR /home/Guides

COPY . .