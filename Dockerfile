FROM debian:latest
MAINTAINER Didier Franc <contact@didierfranc.com>

COPY /scripts /
RUN sh install.sh
CMD ["sh","start.sh"]
