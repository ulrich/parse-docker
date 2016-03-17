FROM debian:latest
MAINTAINER Didier Franc <contact@didierfranc.com>

COPY /script /
RUN sh install.sh
CMD ["bash","start.sh"]
