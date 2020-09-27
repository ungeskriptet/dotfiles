#!/bin/sh
export QT_STYLE_OVERRIDE=Adwaita-Dark
export _JAVA_AWT_WM_NONREPARENTING=1
while :; do sudo python3 -u -m optimus_manager.hooks.pre_xorg_start; startx; done
