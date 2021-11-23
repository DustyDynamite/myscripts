#! /bin/bash


#i3-msg "focus mode_toggle"

i3-msg "[workspace=__focused__ floating] move absolute position center"

i3-msg "[workspace=__focused__ floating] focus"

