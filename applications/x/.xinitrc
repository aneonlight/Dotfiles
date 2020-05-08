# .xinitrc: X autostart commands
# 
# see program specific docs

# disable beep
xset -b

# ensure a mpd server is running
mpd --kill 2>/dev/null
mpd

# restore previous colorscheme
wal -R
exec i3
