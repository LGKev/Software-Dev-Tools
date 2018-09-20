#!/bin/bash

#script will do the following
	# read file: AtheleteTimes.txt, get contents
	# calculate the average time
	# sort on last, first
	# format according to question.

file="/home/kkuwata/Documents/DevTools/lab3/AthleteTimes.txt"

while IFS=: read -r line
do
	printf '%s \n' "$line"
	printf 'decimal %d \n' "$f0"
done < "$file"


