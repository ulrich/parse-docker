FROM node:latest
MAINTAINER Didier Franc <contact@didierfranc.com>

RUN sh parse-docker/install.sh
CMD ["sh","parse-docker/parse-server.sh"]
