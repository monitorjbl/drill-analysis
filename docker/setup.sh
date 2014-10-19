#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "LOCAL_HOST=$(hostname)" > $DIR/drill-base/local-data

docker build -t thundermoose/drill-zookeeper ./drill-zookeeper
docker build -t thundermoose/drill-base ./drill-base
docker build -t thundermoose/drill-server ./drill-server
docker build -t thundermoose/drill-prompt ./drill-prompt
