#!/bin/sh

camera=$(ls /dev | grep 'video')
if [ "$camera" == "" ]
then
    echo -e "\uf030 off"
else 
    echo -e "\uf030 on"
fi

