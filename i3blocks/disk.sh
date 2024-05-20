#!/bin/sh

size=$(df -h / | grep -o "[0-9]*G" | head -1)
used=$(df -h / | grep -o "[0-9]*G" | tail -2 | head -1)
echo -e "\uf1c0 $used/$size"
