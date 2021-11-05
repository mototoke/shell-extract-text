#!/bin/sh
input_file="./input/input-data.csv"
output_file="./output/output-data.csv"
search_word="DUMMY"
replace_word=",XX,"

# Outputファイルあれば消しておく
if [ -e $output_file ]; then
    rm -rf $output_file
fi

START_TIME=`date +%s`

# 検索文字列の行を出力
input_file_search_result=`grep -n "${search_word}" "${input_file}" | sed -e 's/:.*//g'`

for i in ${input_file_search_result[@]}
do
    echo `sed -n "${i}P" "${input_file}"` >> $output_file
done

END_TIME=`date +%s`

DURATION=`expr ${END_TIME} - ${START_TIME}`
echo "It took ${DURATION} sec."