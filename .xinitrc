xset -dpms
xset s off

/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/pipewire-media-session &

eval $(/usr/bin/gnome-keyring-daemon --start --components=secrets)
export SSH_AUTH_SOCK GNOME_KEYRING_CONTROL
nm-applet --indicator &

feh --bg-fill /home/out1312/Pictures/DE.png
picom -b --config .config/picom/picom.conf
dwmblocks &

dunst &

mpd

exec dwm
