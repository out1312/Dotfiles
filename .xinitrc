xset -dpms
xset s off

/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/pipewire-media-session &

nm-applet --indicator &

feh --bg-fill $HOME/Pictures/DE.png
picom -b --config .config/picom/picom.conf
echo "6600" > $HOME/.config/blugon/current
dwmblocks &
echo $! > /tmp/dwmblocks.pid

flameshot &
dunst &

mpd

exec dwm
