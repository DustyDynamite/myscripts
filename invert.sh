#! /bin/bash

if [ "$(pidof compton)" ];
    then
            pkill compton
    else

        ID=$(xdotool getactivewindow)
        CLASS=$(xprop -id "$ID"  | grep "WM_CLASS" | awk '{print $4}')
        COND="class_g=${CLASS}"
        compton --invert-color-include "$COND" &
fi
exit

