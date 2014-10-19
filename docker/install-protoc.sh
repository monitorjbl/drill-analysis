#!/bin/bash

wget https://protobuf.googlecode.com/files/protobuf-2.5.0.zip
unzip protobuf-2.5.0.zip
cd protobuf-2.5.0

./configure
make
make check
make install
