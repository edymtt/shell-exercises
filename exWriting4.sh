#!/usr/bin/env bash

E_NO_ARGS=65
E_NOFILE=86

if [[ $# != 1 ]]  # Must have command-line args to demo script.
then
  echo "Please invoke this script with one command-line arguments."
  exit $E_NO_ARGS
fi  

if [ ! -f "$1" ]       # Does file exist?
then
  echo "File \"$1\" does not exist."
  exit $E_NOFILE
fi

while read LINE
do 
  echo $LINE
  echo
done < $1

while read LINE
do 
  echo $LINE
  echo
  echo
done < $1

while read LINE
do 
  echo -n $LINE
done < $1