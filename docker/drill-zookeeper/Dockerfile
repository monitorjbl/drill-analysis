FROM ubuntu:14.04

MAINTAINER Taylor Jones version: 0.1

RUN apt-get update
RUN apt-get install -y zookeeper 

EXPOSE 2181

ADD ./install.sh /tmp/install.sh
RUN /bin/bash /tmp/install.sh
