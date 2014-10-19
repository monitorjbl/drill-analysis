#!/bin/bash

docker build -t thundermoose/drill-zookeeper ./drill-zookeeper
docker build -t thundermoose/drill-base ./drill-base
docker build -t thundermoose/drill-server ./drill-server
docker build -t thundermoose/drill-prompt ./drill-prompt
