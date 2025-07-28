#!/bin/sh

player_status=$(playerctl status)
if [ "$player_status" = "Playing" ]; then
    echo "   $(playerctl metadata artist | sed 's/&/&amp;/g') - $(playerctl metadata title | sed 's/&/&amp;/g')"
elif [ "$player_status" = "Paused" ]; then
    echo "   $(playerctl metadata artist | sed 's/&/&amp;/g') - $(playerctl metadata title | sed 's/&/&amp;/g')"
else
    echo
fi
