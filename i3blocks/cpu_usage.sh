#!/bin/sh

# Reading mpstat output:
# %usr: shows the percentage of CPU utilization while executing at the user level (application).
# %nice: shows the percentage of CPU utilization while executing at the user level with nice priority.
# %sys: shows the percentage of CPU utilization while executing at the system level (kernel).
# %iowait: show the percentage of time that the CPU or CPUs were idle during which the system had an outstanding disk I/O request.
# %irq: shows the percentage of time spent by the CPU or CPUs to service hardware interrupts.
# %soft: shows the percentage of time spent by the CPU or CPUs to service software interrupts.
# %steal: shows the percentage of time spent in wait by the virtual CPU or CPUs while the hypervisor was servicing another virtual machine.
# %guest: shows the percentage of time spent by the CPU or CPUs to run a virtual processor.
# %idle: shows the percentage of time that the CPU or CPUs were idle and the system did not have an outstanding disk I/O request.

usage=$(mpstat 1 1 | grep "Average" | grep -o "all[ ]*[0-9]*\.[0-9]*" | grep -o "[0-9]*\.[0-9]*")
echo -e "\uf2db $usage%"
