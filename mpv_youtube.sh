#! /bin/bash

COND="$(xsel -ob)"
#flatpak run io.mpv.Mpv "$COND"
#echo $2
flatpak run io.mpv.Mpv $COND
