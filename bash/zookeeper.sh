#!/bin/bash

if [ "$(whoami)" != "root" ]; then
	echo "Must be root"
	exit 1
fi

if [ "$1" == "" ]; then
	echo "Must provide hostname"
	exit 1
fi

HOST=$1

hostname $HOST
sed -i "s/127.0.0.1 localhost/127.0.0.1 localhost $HOST/g" /etc/hosts

apt-get update
apt-get install -y git openjdk-7-jdk wget
apt-get install -y zookeeperd

IP=$(ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}')
echo "Configured $HOST [$IP] as zookeeper host"
