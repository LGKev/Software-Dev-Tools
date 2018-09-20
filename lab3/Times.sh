#!/bin/bash

#script will do the following
	# read file: AtheleteTimes.txt, get contents
	# calculate the average time
	# sort on last, first
	# format according to question.

file="/home/kkuwata/Documents/DevTools/lab3/AthleteTimes.txt"

regExMatch="([ ][0-9]{3,4})"

while IFS=" " read -r fieldA fieldB fieldC fieldD fieldE fieldF
do
	printf 'a: %s ' "$fieldA"
	printf 'b: %s ' "$fieldB"
	printf 'c: %s ' "$fieldC"
	printf 'd: %s ' "$fieldD"
	printf 'e: %s ' "$fieldE"
	printf 'f: %s \n' "$fieldF"


done < "$file"


