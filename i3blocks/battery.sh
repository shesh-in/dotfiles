#!/bin/sh
battery_percentage=$(cat /sys/class/power_supply/BAT1/capacity)
battery_status=$(cat /sys/class/power_supply/BAT1/status)
echo -e "\uf240 $battery_percentage%  $battery_status"


