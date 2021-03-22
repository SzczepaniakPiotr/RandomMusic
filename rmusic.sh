#!/bin/bash
cdirectory="$HOME/Music/"
cd $cdirectory
shopt -s nullglob
myarray=(*.mp3)
shopt -u nullglob
len=${#myarray[*]}
ran=$(($RANDOM%($len)))
xdg-open "${myarray[$ran]}"
