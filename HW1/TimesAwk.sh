#!/bin/bash


#this will calculate averages, then re order, then sort.
# goal is to use AWK for the processing

file="/home/kkuwata/Documents/DevTools/HW1/AthleteTimes.txt"

awk '
BEGIN{};
{

	avg= ($4 + $5 + $6 )/3 
	print $1 "\t[" avg "]\t" $3","$2  >> "tmpFileAwk"
	print "next line? \n"
};
END{
	print "============ \n" >> "tmpFileAwk"
	tail -n 10  "tmpFileAwk"
}
' $file

sort -k3,3d -k2,2d tmpFileAwk > sortedTmpAwk


rm tmpFileAwk











