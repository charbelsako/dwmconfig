#! /bin/bash
dwmblocks &
nm-applet &
xss-lock --transfer-sleep-lock -- lock.sh --nofork &
xbindkeys &
picom -f &
feh --bg-scale ~/Pictures/wallpaper-tokyo\ ghoul.jpg &
