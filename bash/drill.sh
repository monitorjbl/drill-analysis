#!/bin/bash

if [ "$(whoami)" != "root" ]; then
	echo "Must be root"
	exit 1
fi

if [ "$1" == "" ]; then
	echo "Must provide hostname"
	exit 1
fi

if [ "$2" == "" ]; then
	echo "Must provide zookeeper IP"
	exit 1
fi

HOST=$1
ZOO=$2

hostname $HOST
sed -i "s/127.0.0.1 localhost/127.0.0.1 localhost $HOST/g" /etc/hosts
echo "$ZOO	zookeeper" >> /etc/hosts

apt-get update
apt-get install -y git openjdk-7-jdk wget

mkdir -p /opt/drill
cd /tmp
wget http://apache.tradebit.com/pub/incubator/drill/drill-0.5.0-incubating/apache-drill-0.5.0-incubating.tar.gz
tar -xvzf apache-drill-0.5.0-incubating.tar.gz -C /opt/drill --strip-components=1
rm /tmp/apache-drill-0.5.0-incubating.tar.gz

IP=$(ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}')
echo "Configured $HOST [$IP] as drillbit"
