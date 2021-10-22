#!/bin/sh
VOL_STR=$(pamixer --get-volume-human)

if [ "$VOL_STR" = "muted" ]; then
    ICON="ﱝ"
else
    ICON="墳"
fi

printf "%s %s" "$ICON" "$VOL_STR"