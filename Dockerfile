FROM node:latest
MAINTAINER Didier Franc <contact@didierfranc.com>

RUN sh ./install.sh
CMD ["sh","./start.sh"]
