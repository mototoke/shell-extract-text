#!/bin/sh
input_file="./input/input-data.csv"
output_file="./output/output-data.csv"
search_word=",DUMMY,"
replace_word=",NODUMMY,"

# Outputファイルあれば消しておく
if [ -e $output_file ]; then
    rm -rf $output_file
fi

START_TIME=`date +%s`

# 置換結果を別ファイルに出力
awk -v search=${search_word} -v replace=${replace_word} '{ sub( search, replace ,$0);print $0 }' ${input_file} > $output_file

# 検索文字列の行を出力
# awk '/'${search_word}'/ {print NR, $0}' ${input_file}

# 置換結果を元ファイルに上書きで反映
# awk -i inplace -v search=${search_word} -v replace=${replace_word} '{ sub( search, replace ,$0);print $0 }' ${input_file}

END_TIME=`date +%s`

DURATION=`expr ${END_TIME} - ${START_TIME}`
echo "It took ${DURATION} sec."