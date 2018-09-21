#!/bin/bash


#this will calculate averages, then re order, then sort.
# goal is to use AWK for the processing

file="/home/kkuwata/Documents/DevTools/lab3/AthleteTimes.txt"



awk 'getline < $file {print $0}'
