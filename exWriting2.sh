#!/usr/bin/env bash

DIRECTORY_TO_LIST=$HOME/Documents
LISTING_FILE_COMPRESSED=listing.txt.gz
FLASH_DRIVE=/Volumes/IX2

ls -R $DIRECTORY_TO_LIST | gzip > $LISTING_FILE_COMPRESSED

while ! df -l | fgrep "$FLASH_DRIVE" > /dev/null
do
	echo Insert flash drive named `basename $FLASH_DRIVE` and press enter
	read
done

cp $LISTING_FILE_COMPRESSED "$FLASH_DRIVE"
diskutil umount $FLASH_DRIVE

