#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker stop zookeeper
docker rm zookeeper

docker run -dP -h zookeeper --name zookeeper thundermoose/drill-zookeeper
docker run -itP -v $DIR/data:/data -h drill-1 --link zookeeper:zookeeper thundermoose/drill-server
