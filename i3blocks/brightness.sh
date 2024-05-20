#!/bin/sh
brightness=$(brightnessctl g)
brightness=$(($(($brightness)) / 960))
echo -e "\uf185 $brightness%"
