FROM node:16-alpine3.11

WORKDIR /usr/app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

RUN apk update && \    
    apk add --no-cache \
    bash \
    vim 
    
COPY . .

CMD ["npm", "start"]


