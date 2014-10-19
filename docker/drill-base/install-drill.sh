#!/bin/bash

mkdir -p /opt/drill

cd /tmp
wget http://apache.tradebit.com/pub/incubator/drill/drill-0.5.0-incubating/apache-drill-0.5.0-incubating.tar.gz
tar -xvzf apache-drill-0.5.0-incubating.tar.gz -C /opt/drill --strip-components=1
rm /tmp/apache-drill-0.5.0-incubating.tar.gz

cd /opt/drill
