#!/bin/bash

rofi_command="rofi"

### Options ###
screen="Scrot Screen"
area="Scrot Selected Area"
window="Scrot Window"

options="$screen\n$area\n$window"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 1)"
case $chosen in
    $screen)
        sleep 1; scrot
        ;;
    $area)
        scrot -s
        ;;
    $window)
        sleep 1; scrot -u
        ;;
esac
