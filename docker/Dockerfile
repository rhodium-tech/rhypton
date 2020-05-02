FROM debian:stretch
LABEL maintainer="RHYPTON Developers <dev@rhypton.org>"
LABEL description="Dockerised RHYPTONCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
