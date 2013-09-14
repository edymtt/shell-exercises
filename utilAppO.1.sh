#!/usr/bin/env bash

isMagicNumber()
{
   (( ${1} % 5 == 3 && 
		${1} % 7 == 4 && 
	    ${1} % 9 == 5 ));
}

searchForMagicNumber()
{
	for ((nr=1; nr<$1; nr++))
    do
	  if isMagicNumber $nr
	  then
	    break
      fi
    done

    return $nr
}