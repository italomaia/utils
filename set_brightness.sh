#!/bin/sh

# Changes the brightness of the screen. Useful when the
# UI brightness controls do not work.

if [ $# -eq 0 ]
then
  echo "please, provide the brightness value, as a float"
  exit 1
fi

if [ $# -eq 1 ]
then
  device=$(xrandr -q|grep connected|head -n 1|awk '{print $1}')
  xrandr --output $device --brightness $1
fi
