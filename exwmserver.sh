#! /bin/bash

Xephyr -br -ac -noreset -screen 1360x730 :2 &
export DISPLAY=:2
emacs
