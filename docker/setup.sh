#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cat /dev/null > local-data
echo "ZOO_HOST=zookeeper" >> $DIR/local-data

docker build -t thundermoose/drill-zookeeper ./drill-zookeeper
docker build -t thundermoose/drill-base ./drill-base
docker build -t thundermoose/drill-server ./drill-server
docker build -t thundermoose/drill-prompt ./drill-prompt
