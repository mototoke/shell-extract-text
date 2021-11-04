#!/bin/sh

# https://blog.goo.ne.jp/_memento/e/c7a84e32e1f6261ba07a1bf10d7e44ed

START_TIME=`date +%s`

input_file="./input/input-data.csv"
output_file="./output/output-data.csv"
search_word=",2b,"
replace_word=",XX,"

# 検索文字列の行を出力
# awk '/'${search_word}'/ {print NR, $0}' ${input_file}

# 置換結果を元ファイルに上書きで反映
# awk -i inplace -v search=${search_word} -v replace=${replace_word} '{ sub( search, replace ,$0);print $0 }' ${input_file}

# 置換結果を別ファイルに出力
awk -v search=${search_word} -v replace=${replace_word} '{ sub( search, replace ,$0);print $0 }' ${input_file} > $output_file

END_TIME=`date +%s`

DURATION=`expr ${END_TIME} - ${START_TIME}`
echo "It took ${DURATION} sec."