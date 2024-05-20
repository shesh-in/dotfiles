#!/bin/bash

total=$(free -hg | grep 'Mem' | grep "[0-9]\.*[0-9]*[MG]i" -o | head -1)
used=$(free -hg | grep 'Mem' | grep "[0-9]\.*[0-9]*[MG]i" -o | head -2 | tail -1)
echo -e "\uf0a0 $used/$total"
