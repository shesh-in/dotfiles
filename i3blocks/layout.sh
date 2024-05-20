#!/bin/sh

layout=$(swaymsg -t get_inputs | grep -m1 'xkb_active_layout_name' | grep -o ": \"[[:alnum:]]*" | grep -o "[[:alnum:]]*")
if [ "$layout" = "English" ]
then
    layout_abbr="EN"
elif [ "$layout" = "Russian" ]
then 
    layout_abbr="RU"
else
    layout_abbr="--"
fi

echo -e "\uf11c $layout_abbr"
