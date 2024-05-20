#!/bin/sh

temp=$(sensors | grep 'Package id 0:' | grep ':[ ]*+[0-9]*.[0-9]*°C' -o | grep '[0-9]*.[0-9]*°C' -o)
echo -e "\uf2c8 $temp"
