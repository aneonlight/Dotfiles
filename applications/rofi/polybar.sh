#!/bin/bash

rofi_command="rofi"

### Options ###
prestart="Restart Polybar"
pstart="Start Polybar"
pkill="Kill Polybar"
# Variable passed to rofi
options="$prestart\n$pstart\n$pkill"

chosen="$(echo -e "$options" | $rofi_command -dmenu)"
case $chosen in
    $pkill)
        pkill -f "polybar tray" 2>/dev/null
        pkill -f "polybar bar" 2>/dev/null
        ;;
    $prestart)
        pkill -f "polybar tray" 2>/dev/null
        pkill -f "polybar bar" 2>/dev/null
        polybar bar >/tmp/bar.log 2>&1 &
        polybar tray >/tmp/tray.log 2>&1 &
        sleep 1
        ~/.config/polybar/scripts/pavolume.sh down
        ~/.config/polybar/scripts/pavolume.sh up
        ;;
    $pstart)
        polybar bar >/tmp/bar.log 2>&1 &
        polybar tray >/tmp/tray.log 2>&1 &
        sleep 1
        ~/.config/polybar/scripts/pavolume.sh down
        ~/.config/polybar/scripts/pavolume.sh up
        ;;
esac
