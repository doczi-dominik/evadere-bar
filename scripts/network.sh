#!/bin/sh
ETH_INT="enp0s31f6"
WLAN_INT="wlp0s20f3"

ETH_IP=$(ip -oneline addr show "$ETH_INT")

if [ "$ETH_IP" != "" ]; then
    echo " $ETH_IP"
    exit 0
fi

DISABLED=$(rfkill -o TYPE,SOFT | grep -i "wlan\s*blocked")

if [ "$DISABLED" != "" ]; then
    echo "󰤭 DISABLED"
    exit 0
fi

SSID=$(iwctl station wlan0 show | grep 'Connected network' | awk '{for(i=3;i<=NF;++i)print $i}')

echo "󰤥 $SSID"
