#!/usr/bin/env bash

#Modified to work under OS X / BSD

find . -maxdepth 1 -type f -print0 | {
	while read -d $'\000'; do
		echo "$REPLY"
		mv "$REPLY" "$(date -j -f %s "$(stat -f '%m' "$REPLY")" '+%Y%m%d%H%M%S')-${REPLY#./}"
	done
}