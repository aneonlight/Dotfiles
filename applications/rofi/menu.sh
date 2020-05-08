#!/bin/sh

drun="Run"
hydrus="Hydrus"
scrot="Scrot"
pbar="Polybar"

options="$drun\n\n$hydrus\n$scrot\n$pbar"

chosen="$(printf "$options" | rofi -dmenu)"

case $chosen in
    $drun)
        rofi -show run
        ;;
    $hydrus)
    	exec ~/Downloads/hydrus/client
	;;
    $scrot)
        sh -c "~/.config/rofi/scrot.sh"
        ;;
    $pbar)
        sh -c "~/.config/rofi/polybar.sh"
        ;;
esac
