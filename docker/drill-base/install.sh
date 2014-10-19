#!/bin/bash

mkdir -p /opt/drill
cd /tmp

wget http://apache.tradebit.com/pub/incubator/drill/drill-0.5.0-incubating/apache-drill-0.5.0-incubating.tar.gz
tar -xvzf apache-drill-0.5.0-incubating.tar.gz -C /opt/drill --strip-components=1
rm /tmp/apache-drill-0.5.0-incubating.tar.gz

sed -i "s/ZOO_HOST/$LOCAL_HOST/g" /tmp/drill-override.conf
cp /tmp/drill-override.conf /opt/drill/conf/drill-override.conf
rm /tmp/drill-override.conf
