#!/bin/bash

#script will do the following
	# read file: AtheleteTimes.txt, get contents
	# calculate the average time
	# sort on last, first
	# format according to question.

#file="/home/kkuwata/Documents/DevTools/lab3/AthleteTimes.txt"
file="$1"

touch "tmp.txt"
touch "sorted_avg.txt"

while IFS=" " read -r ID First Last time1 time2 time3 
do

	avg=0;
	sum=0;

#	printf '1: %s ' "$ID"
#	printf '2: %s ' "$First"
#	printf '3: %s ' "$Last"
#	printf '4: %s ' "$time1"
#	printf '5: %s ' "$time2"
#	printf '6: %s ' "$time3"

	sum="$((time1 + time2 + time3))"
	avg="$((sum/3))"
#	printf 'avg: %.2f \n'  "$avg"

	echo "$ID [$avg] $Last, $First " >> "tmp.txt"


done < "$file"

#cat "tmp.txt"


# this sorting was key, k3,3d is start sort at field 3 (3rd column) then do a sort on 4th field if field 3 are equal
sort -o "sorted_avg.txt" "tmp.txt" -k3,3d -k4
cat "sorted_avg.txt"

rm "tmp.txt"
