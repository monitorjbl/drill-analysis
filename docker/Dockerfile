FROM ubuntu:14.04

MAINTAINER Taylor Jones version: 0.1

RUN apt-get update
RUN apt-get install -y git 
RUN apt-get install -y openjdk-7-jdk 
RUN apt-get install -y maven
RUN apt-get install -y build-essential
RUN apt-get install -y wget 

RUN git clone https://github.com/apache/incubator-drill.git

ADD ./install-protoc.sh /tmp/install-protoc.sh
RUN /bin/bash /tmp/install-protoc.sh

ADD ./deps-install.sh /tmp/deps-install.sh
RUN /bin/bash /tmp/deps-install.sh

#ADD ./compile.sh /tmp/compile.sh
#RUN /bin/bash /tmp/compile.sh
