#!/bin/bash
working_dir=$(cat data/pwd.txt)

cat $1 > ${working_dir}/result1.txt
grep -c `cat ${working_dir}/data/destination.addr` ${working_dir}/result1.txt  > ${working_dir}/result2.txt
is_grepped=$(cat ${working_dir}/result2.txt)

if test $is_grepped -eq 1
then
	sed -n '/"id"/ p' ${working_dir}/result1.txt | sed 's/      "id": "//'|sed 's/",//' > ${working_dir}/result3.txt
fi

#rm result1.txt
#rm result2.txt

