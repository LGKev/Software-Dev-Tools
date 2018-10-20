#!/bin/bash
# Kevin Kuwata
# 9/28/18
# HW1

# Question 1
#how many lines end with a number?
	grep -e \[0-9\]$ $1 |  wc -l

	#answer: 15371

# Question 2
# how many lines start with a vowel.
	grep -e ^\[aeiouy\] $1 |wc -l

	#answer: 7226

# Question 3
# how many 9 letter lines?
	grep -x -e  "\w[[:alpha:]]\{9\}" $1 | wc -l	

	#answer: 1892

# Question 4:
# how many phone numbers are in the data set?
	grep -e "[[:digit:]]\{3\}-[[:digit:]]\{3\}-[[:digit:]]\{4\}" $1 | wc -l
	# answer: 770

# Question 5:
# how many city of boulder phone numbers? 303?
	grep -e "303-[[:digit:]]\{3\}-[[:digit:]]\{4\}" $1 | wc -l
	# answer: 407


# Question 6:
# how many lines begin with a number and end with a vowel?
	grep  '^[[:digit:]].*\(a\|e\|i\|o\|u\|y\)$' $1 | wc -l
	#answer: 103


# Question 7:
# How many email addresses from UCDenver? 
	grep 'UCDenver.edu$' $1 | wc -l
	# Answer: 454


# Question 8: I used [[:print:]] to capture last names with hyphens.
# how many email addreses are fir.last name AND involve someone whose first name starts with a letter in the second half of the alphabet.
	grep  '^[n-zN-Z][a-zA-Z]*\.[[:print:]]*' $1 | wc -l
	# Answer: 87



