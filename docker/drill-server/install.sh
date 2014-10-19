#!/bin/bash

set -x
source /tmp/local-data
sed -i "s/ZOO_HOST/$ZOO_HOST/g" /tmp/drill-override.conf
cat /tmp/drill-override.conf

cp /tmp/drill-override.conf /opt/drill/conf/drill-override.conf

rm /tmp/drill-override.conf
rm /tmp/local-data
