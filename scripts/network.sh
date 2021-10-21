#!/bin/sh
ETH_INT="enp0s31f6"
WLAN_INT="wlp0s20f3"

ETH_IP=$(ip -oneline addr show "$ETH_INT")

if [ "$ETH_IP" -ne "" ]; then
    echo " $ETH_IP"
    exit 0
fi

if rfkill -o TYPE,SOFT | grep -i "wlan\s*blocked"; then
    echo "睊 DISABLED"
    exit 0
fi

SSID=$(nmcli -t -f GENERAL.CONNECTION device show "$WLAN_INT" | cut -d':' -f2)

echo "直 $SSID"