#!/bin/bash
#This script prints the text file names in
#the given directory and all the other
#sub directories.

#Iterate the text files first.
#Files have been sorted with -v
#Like required in the given example. 
for f in `ls $1/ | sort -V` ; do
  #If matched, print the file name with a string at the end.
  if [[ $f == *.txt* ]]; then
      echo -n $(basename "$f")
      echo ' is a file'
  fi
done

#Next, iterate and search for folders.
for entry in $1/* ; do
  # If matched, print the folder name with a string at the end.
  if [ -d "$entry" ];then
    echo -n $(basename "$entry")
    echo ' is a directory'
  fi
done


