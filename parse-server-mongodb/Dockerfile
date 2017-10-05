FROM mongo:3.2.17-jessie

RUN mkdir /db

RUN chown mongodb: /db

VOLUME /db

CMD mongod --dbpath /db
