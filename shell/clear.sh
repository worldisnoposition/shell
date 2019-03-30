#!/bin/bash
cd /home/xiaohebo/桌面/clearlog
dates_15=`date -d -15days '+%Y-%m-%d'`
echo $dates_15
second=`date -d "$dates_15" +%s`
echo $second
for file in $(ls *)
do
    echo "==========="
    echo $file
    hou=${file#*.log.}
    qian=${file%-tomcat.log}
    if [ ${#hou} -eq 10 ] ;then
	echo "jinlaile $hou"
	echo $hou
	thou=`date -d "2018-3-30" +%s`
	echo "meishengxiao$thou"
	if [ $thou -lt $second ] ;then
	    echo "dierge $hou"
	fi
    fi
    if [ ${#qian} -eq 10 ] ;then
	echo $qian
    fi
done
