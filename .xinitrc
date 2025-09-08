xset -dpms
xset s off

/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/pipewire-media-session &

feh --bg-fill /home/out1312/Pictures/DE.png
picom -b --config .config/picom/picom.conf
dwmblocks &
echo $! > /tmp/dwmblocks.pid

flameshot &
dunst &

mpd

exec dwm
