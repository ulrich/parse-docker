FROM node:latest
MAINTAINER Didier Franc <contact@didierfranc.com>

RUN git clone https://github.com/didierfranc/parse-docker.git
RUN sh parse-docker/install.sh
CMD ["sh","parse-docker/start.sh"]
