FROM mongo:3.2.17-jessie

RUN mkdir /db3.2

RUN chown mongodb: /db3.2

VOLUME /db3.2

CMD mongod --dbpath /db3.2
