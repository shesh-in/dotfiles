#!/bin/sh
volume=$(amixer get Capture | grep -o -m1 "[[:digit:]]*%")
mute=$(amixer get Capture | grep -o -m1 "\[off\]")
if [ "$mute" = "" ] 
then 
    echo -e "\uf130 $volume"
else 
    echo -e "\uf131 $volume"
fi
