FROM ubuntu:14.04

MAINTAINER Taylor Jones version: 0.1

RUN apt-get update
RUN apt-get install -y git 
RUN apt-get install -y openjdk-7-jdk 
RUN apt-get install -y wget

ADD ./install.sh /tmp/install.sh
RUN /bin/bash /tmp/install.sh

