#!/bin/bash

if [ $1 == $2 ]
then
	echo true
    exit 0
else
	echo false
    exit 1
fi
