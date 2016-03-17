FROM debian:latest
MAINTAINER Didier Franc <contact@didierfranc.com>

COPY /scripts /
RUN sh install.sh
CMD ["bash","start.sh"]
