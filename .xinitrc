#!/bin/sh

# WTF eaven is this
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Shitvidia
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

# No screen saver
xset -dpms
xset s noblank
xset s off

# Cursor
xsetroot -cursor_name left_ptr 

# Mouse acceleration
xinput --set-prop 10 'libinput Accel Profile Enabled' 0, 1
xinput --set-prop 11 'libinput Accel Profile Enabled' 0, 1
xinput --set-prop 12 'libinput Accel Profile Enabled' 0, 1
xinput --set-prop 8 'libinput Accel Profile Enabled' 0, 1
# Keyboard
setxkbmap pl

# Polkit
/usr/lib/xfce-polkit/xfce-polkit &

my_laptop_external_monitor=$(xrandr --query | grep 'HDMI-0')
if [[ $my_laptop_external_monitor = *connected* ]]; then
	xrandr --output HDMI-0 --mode 1920x1080 --refresh 144 --primary --output DP-2 --off 
fi

# BSPWM
sxhkd &
exec bspwm

# Noisetorch
# noisetorch &
