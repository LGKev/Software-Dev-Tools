#!/bin/bash


#this will calculate averages, then re order, then sort.
# goal is to use AWK for the processing

#file="/home/kkuwata/Documents/DevTools/HW1/AthleteTimes.txt"
file="$1"
awk '
BEGIN{};
{

	avg= ($4 + $5 + $6 )/3 
	print $1 "\t[" avg "]\t" $3","$2  >> "tmpFileAwk"
};
END{
	tail -n 10  "tmpFileAwk"
}
' $file

sort -k3,3d -k2,2d tmpFileAwk > sortedTmpAwk

cat sortedTmpAwk

rm tmpFileAwk











