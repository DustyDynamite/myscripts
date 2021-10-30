#!/bin/bash

DIFF=$((6-1+1))
R=$(($(($RANDOM%$DIFF))+1))

rofi -e $R
