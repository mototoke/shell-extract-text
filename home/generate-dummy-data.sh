#!/bin/sh

# 参考URL
# https://stackoverflow.com/questions/29253591/generate-large-csv-with-random-content-in-bash

num=${1:-1000000}

START_TIME=`date +%s`

hexdump -v -e '5/1 "%02x""\n"' /dev/urandom |
  awk -v OFS=',' '
    { print substr($0, 1, 8), substr($0, 9, 2), int(NR * 32768 * rand()) }' |
  head -n "$num" > ./input/input-data.csv

END_TIME=`date +%s`

DURATION=`expr ${END_TIME} - ${START_TIME}`
echo "It took ${DURATION} sec."