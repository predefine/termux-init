#!/data/data/com.termux/files/usr/bin/sh

#Disable wifi powersave and enable auto set channel
if [ -f "$PREFIX/bin/iwconfig" ]; then
    su -c "$PREFIX/bin/iwconfig wlan0 power off"
    su -c "$PREFIX/bin/iwconfig wlan0 channel auto"
fi