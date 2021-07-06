#!/bin/bash

/usr/bin/prime-offload
source ~/.xsession

case $wm in
i3)
	exec i3
	;;
*)
	xbindkeys
	xmonad
	killall xbindkeys
	;;
esac
