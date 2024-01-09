#!/bin/bash

# Daten für Gesamt-CPUs:
# Spalten 2, 4, 5 für user/sys/idle
cpuusertotal=$(cat /proc/stat | grep 'cpu ' | cut -d' ' -f3)
cpusystotal=$(cat /proc/stat | grep 'cpu ' | cut -d' ' -f5)
cpuidletotal=$(cat /proc/stat | grep 'cpu ' | cut -d' ' -f6)

echo $cpuusertotal
echo $cpusystotal
echo $cpuidletotal

cpuusagetotal=$((100 * ($cpuusertotal + $cpusystotal) / 
    ($cpuusertotal + $cpusystotal + $cpuidletotal) ))

echo "CPU-Belastung insgesamt:"
echo $cpuusagetotal

exit 0