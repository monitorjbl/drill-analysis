FROM ubuntu:14.04

MAINTAINER Taylor Jones version: 0.1

RUN apt-get update
RUN apt-get install -y zookeeperd 

EXPOSE 2181

CMD service zookeeper start && tail -f /var/log/dmesg
