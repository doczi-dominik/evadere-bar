#!/bin/sh

COUNT=$(checkupdates-with-aur | wc -l)

if [ "$COUNT" -eq "0" ]; then
	exit 1
else
	printf " %s" "$COUNT"
fi

