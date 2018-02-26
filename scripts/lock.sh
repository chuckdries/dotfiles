#!/usr/bin/env bash

icon="$HOME/scripts/lock.png"
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }

maim -f png -m 1\
    | gm convert - -scale 10% -scale 1000% miff:-\
    | gm composite "$icon" miff:- -gravity East -geometry +1100 -matte png:"$tmpbg"

i3lock -u -i "$tmpbg"
