FROM node:latest

WORKDIR /usr/src/app
COPY package*.json ./
RUN apt-get update && apt-get install vim -y
RUN npm install -g modified-gitlab-radiator
COPY . .

EXPOSE 3000

ENTRYPOINT npm run starter
