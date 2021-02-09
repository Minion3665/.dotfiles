# Offload GPU to optimus manager
/usr/bin/prime-offload

# Set screen layout and background, must be above mouse
/usr/local/bin/setup-displays
picom --backend xrender -I 0.45 -O 0.5 &
~/.fehbg &

# Set the mouse cursor size and theme
xsetroot -xcf /usr/share/icons/DMZ-Black-96dpi/xcursors/left_ptr 24
xrdb -merge ~/.Xresources &

# Start up essential toolbar items
# optimus-manager-qt &
/var/lib/snapd/snap/bin/chaseapp &

# Enable system utilities such as the tray, the screensaver
# and finally the window manager
# xscreensaver -no-splash &
trayer --monitor "primary" --height 17 --widthtype pixel --width 85 --edge top --align right --transparent true --alpha 0 --tint 0 &
/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh
# deadd-notification-center &
spotifyd
