FROM node:latest

WORKDIR /usr/src/app
COPY package*.json ./
RUN apt-get update && apt-get install vim -y
RUN npm install
COPY . .

EXPOSE 3000
#COPY .gitlab-radiator.yml /root
RUN npm run build
ENTRYPOINT npm start
