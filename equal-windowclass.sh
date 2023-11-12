#!/bin/bash

if [ $1 == $(xdotool getactivewindow getwindowclassname) ]
then
	echo true
    exit 0
else
	echo false
    exit 1
fi
