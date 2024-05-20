#!/bin/sh

name=$(nmcli device | grep "^wlo1" | awk '{ print $NF }')
ethernet=$(nmcli device | grep "ethernet" | awk '{ print $3 }')
if [ "$ethernet" = "" ]
then
    ethernet_str=$"" 
else
    ethernet_str=$" wired"
fi
echo -e "\uf1eb $name$ethernet_str"
