prime-offload
dunst &
dwmblocks &
xautolock -time 5 -locker "slock" &
xrandr --output HDMI1 --left-of eDP1
feh --bg-fill /usr/share/wallpaper/open-sourcerer.png
exec dbus-launch --sh-syntax --exit-with-session dwm
