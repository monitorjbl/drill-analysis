#!/bin/bash

if [ "$(whoami)" != "root" ]; then
	echo "Must be root"
	exit 1
fi

if [ "$1" == "" ]; then
	echo "Must provide zookeeper ip"
	exit 1
fi

ZOO=$1

echo "$ZOO  zookeeper" >> /etc/hosts

apt-get update
apt-get install -y git openjdk-7-jdk wget

mkdir -p /opt/drill
cd /tmp
wget http://apache.tradebit.com/pub/incubator/drill/drill-0.5.0-incubating/apache-drill-0.5.0-incubating.tar.gz
tar -xvzf apache-drill-0.5.0-incubating.tar.gz -C /opt/drill --strip-components=1
rm /tmp/apache-drill-0.5.0-incubating.tar.gz

