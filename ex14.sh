#!/bin/bash
#This script calculates the total
#money in a given clients account
#from a given bank log file.

#The index of the transaction in the file format.
N=3
#This will count the line numbers.
#The loop will iterate the file moving each line into $line.
while IFS='' read -r line || [[ -n "$line" ]]; do
    #If the line has the client name input as a substring
    #Print it.
    if [[ $line == $1[[:space:]]* ]]; then
        #Sum the account transaction into total balance.
        arr=($line)
        num=$(( $num + ${arr[N-1]} )) 
	echo $line
    fi
done < "$2"
#Print total account balance.
echo -n 'Total balance: '
echo $num
