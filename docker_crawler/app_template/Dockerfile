#-----DEVELOPMENT ENVIRONMENT------------
FROM node:18-alpine3.15 as development

RUN apk update && apk upgrade 
RUN apk add bash

WORKDIR /usr/app

COPY package*.json ./

RUN npm install

COPY . .

