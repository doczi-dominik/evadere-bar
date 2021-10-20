#!/bin/sh
BAT0="/sys/class/power_supply/BAT0"
CAP=$(cat "$BAT0/capacity")
STAT=$(cat "$BAT0/status")

if [ "$STAT" = "Charging" ]; then
    ICON=""
elif [ "$CAP" -lt "11" ]; then
    ICON=""
elif [ "$CAP" -lt "21" ]; then
    ICON=""
elif [ "$CAP" -lt "31" ]; then
    ICON=""
elif [ "$CAP" -lt "41" ]; then
    ICON=""
elif [ "$CAP" -lt "51" ]; then
    ICON=""
elif [ "$CAP" -lt "61" ]; then
    ICON=""
elif [ "$CAP" -lt "71" ]; then
    ICON=""
elif [ "$CAP" -lt "81" ]; then
    ICON=""
elif [ "$CAP" -lt "91" ]; then
    ICON=""
else
    ICON=""
fi

printf "%s %s%%" "$ICON" "$CAP"