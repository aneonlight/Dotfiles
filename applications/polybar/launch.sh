#!/bin/sh

# launch.sh
#
# polybar launch script

pkill polybar 2>/dev/null

polybar bar >/tmp/bar.log 2>&1 &
polybar tray >/tmp/tray.log 2>&1 &

sleep 5

pactl set-sink-volume 0 -5%
pactl set-sink-volume 0 +5%
