#/usr/bin/env bash

SRC=~/git/ruby_koans/koans
export SUM=0

for f in $(find $SRC -name "*.rb")
do
	export SUM=$(($SUM + $(wc -l $f | awk '{ print $1 }'))) #
done

	echo $SUM