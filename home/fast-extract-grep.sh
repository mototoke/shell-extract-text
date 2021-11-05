#!/bin/sh
input_file="./input/input-data.csv"
output_file="./output/output-data.csv"
search_word="DUMMY"

# Outputファイルあれば消しておく
if [ -e $output_file ]; then
    rm -rf $output_file
fi

START_TIME=`date +%s`

# 検索文字列の行を出力
grep $search_word $input_file > $output_file

END_TIME=`date +%s`

DURATION=`expr ${END_TIME} - ${START_TIME}`
echo "It took ${DURATION} sec."