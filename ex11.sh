#!/bin/bash
#This script prints all lines 
#and line numbers with matching string.

#Use grep to search for full words and show line numbers.
#Use awk to edit the display format.
grep -nw "$2" "$1" | awk -F: '{ print $1 " " $2 }'
