#! /bin/bash

title="FocusTime"
echo -e '\033]2;'$title'\007'


if [ "$1" != "" ] 
then
	tar=$1
else
	tar=60
fi

while true; do
	myvariable=$(date --date "1970-01-01 00:02:00 $(shuf -n1 -i0-$tar) sec" '+%T')
	myvariable=$(echo $myvariable | awk -F: '{ print ($1 * 3600) + ($2 * 60) + $3 }')
	sleep $myvariable
	#i3-msg "exec i3-nagbar -m \"FocusTime $myvariable\""
	rofi -e "FocusTime $myvariable"
done

