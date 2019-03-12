#!/bin/bash
#This script prints the contents of
#the files with the given name
#upto one subfolder.

#Iterate the list of files/directories in the given path.
IFS=$'\n'
for f in `ls "$1/" | sort -V` ; do
  #If there is a directory, we enter it.
  if [[ -d $1/$f ]]; then
    #Iterate the contents of the directory.
    for k in `ls $1/$f/ | sort -V` ; do
      #If the file exists in the directory print it's contents.
      if [[ $k == "$2"* ]]; then
        if [ -f "$1/$f/$k" ];then
          cat "$1/$f/$k"
        fi
        #Done with subfolder.
        break
      fi
    done
  fi
  #If matched, print the text inside the file.
  if [[ $f == $2* ]]; then
    if [ -f "$1/$f" ];then
      cat "$1/$f"
    fi
  fi
done
