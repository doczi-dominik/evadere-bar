#!/bin/sh
VOL_STR=$(pamixer --get-volume-human)

if [ "$VOL_STR" = "muted" ]; then
    ICON="󰝟"
else
    ICON="󰕾"
fi

printf "%s %s" "$ICON" "$VOL_STR"
