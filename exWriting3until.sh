#!/usr/bin/env bash

# Listing the planets.

planets=( Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto  )
planet_index=0

until [[ $planet_index -ge ${#planets[*]} ]]
do
  echo ${planets[planet_index]}  # Each planet on a separate line.
(( planet_index++ ))
done


echo; echo

planets_wrong[0]="Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto"  
planet_index=0
until [[ $planet_index -ge ${#planets_wrong[*]} ]]
    # All planets on same line.
    # Entire 'list' enclosed in quotes creates a single variable.
    # Why? Whitespace incorporated into the variable.
do
  echo ${planets_wrong[planet_index]}
(( planet_index++ ))
done

echo; echo "Whoops! Pluto is no longer a planet!"

exit 0
