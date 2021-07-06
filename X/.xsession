~/.screenlayout/setup-displays.sh               && {}

picom --backend glx & # --glx-fshader-win "$(cat /home/minion/.config/picom/shader.glsl)"                                              &     `# Please note: this is not picom, this is https://github.com/ibhagwan/picom/tree/next-rebase, a picom fork with both blurring & rounded corners`
~/.fehbg                                        &

xrdb -merge ~/.Xresources                       && {}
setxkbmap -layout gb                            && {}
setxkbmap -option grab:break_actions            && {}

deadd-notification-center                       &
nm-applet                                       &
redshift-gtk                                    &
spotifyd                                        && {}
keepassxc                                       &
xautolock -time 5 -locker "/home/minion/bin/lock" -notify 30 -notifier 'notify-send --urgency=critical "About to lock" "Your system will lock in 30 seconds due to inactivity" && paplay /usr/share/sounds/freedesktop/stereo/suspend-error.oga' -corners 00-0 &
~/bin/mouse                                     && {}
pulseeffects --gapplication-service             &
openrgb --startminimized --server               &
