#!/bin/bash

os=$(uname -o)
kernel=$(uname -r)
cpu=$(lscpu | awk '/Model name/{print $3, $4, $5, $6, $7}')
cpukerne=$(lscpu | awk '/socket/{print $4}')
ram=$(free -m| awk '/Mem/{ print $2 }')
grafikkarte=$(lspci | awk '/VGA/{print $5, $6, $7, $8}')
space=$(lsblk | awk '/disk/{print $4}')

echo "Übersicht der Systemdaten"
echo "=========================="
echo "Betriebsystem:" $os
echo "Kernel-Version:" $kernel
echo "CPU u. Kerne:" $cpu "mit" $cpukerne "Kerne"
echo "RAM:" $ram"MB"
echo "Grafikkarte:" $grafikkarte
echo "Festplattenspeicher:" $space


exit 0