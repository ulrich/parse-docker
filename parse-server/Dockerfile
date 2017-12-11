FROM node:boron

RUN apt-get update && apt-get dist-upgrade -y

RUN npm install -g parse-server

ADD config.json .

CMD parse-server config.json
