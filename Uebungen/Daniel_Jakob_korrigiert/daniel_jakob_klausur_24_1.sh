#!/bin/bash

memtotal=$(cat /proc/meminfo | grep 'MemTotal: ' | cut -f2 -d: )
memfree=$(cat /proc/meminfo | grep 'MemFree: ' | cut -f2 -d: )
memavailable=$(cat /proc/meminfo | grep 'MemAvailable: ' | cut -f2 -d: )
active=$(cat /proc/meminfo | grep 'Active: ' | cut -f2 -d: )
inactive=$(cat /proc/meminfo | grep 'Inactive: ' | cut -f2 -d:)
swaptotal=$(cat /proc/meminfo | grep 'SwapTotal: ' | cut -f2 -d: )
swapfree=$(cat /proc/meminfo | grep 'SwapFree: ' | cut -f2 -d: )

echo "Gesamter-Arbeitsspeicher:"$memtotal
echo "Freier Arbeitsspeicher:"$memfree
echo "Verfügbarer Arbeitsspeicher ohne Swap:"$memavailable
echo "Belegter Speicher:"$active
echo "Speicher, der wieder belegt werden kann:"$inactive
echo "Swap-Speicher:"$swaptotal
echo "Freier Swap-Speicher:"$swapfree