#!/usr/bin/env bash

icon="$HOME/scripts/lock.png"
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }

maim "$tmpbg"
gm convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
gm composite "$icon" "$tmpbg" -gravity East -geometry +1100 -matte "$tmpbg"
i3lock -u -i "$tmpbg"

