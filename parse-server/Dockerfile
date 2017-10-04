FROM debian:jessie

RUN apt-get update && apt-get dist-upgrade -y

RUN apt-get install -y curl

RUN curl -sL https://deb.nodesource.com/setup_5.x | bash -

RUN apt-get install -y nodejs

RUN npm install -g parse-server

ADD config.json .

CMD parse-server config.json
