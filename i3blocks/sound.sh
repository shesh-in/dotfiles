#!/bin/sh
volume=$(amixer get Master | grep -o -m1 "[[:digit:]]*%")
mute=$(amixer get Master | grep -o -m1 "\[off\]")
if [ "$mute" = "" ] 
then 
    echo -e "\uf028 $volume"
else 
    echo -e "\uf026  $volume"
fi
