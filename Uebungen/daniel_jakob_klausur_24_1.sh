#!/bin/bash

memtotal=$(cat /proc/meminfo | grep 'MemTotal: ' | cut -f2 -d: | awk '{ print$1 }' )
memfree=$(cat /proc/meminfo | grep 'MemFree: ' | cut -f2 -d: | awk '{ print$1 }' )
memavailable=$(cat /proc/meminfo | grep 'MemAvailable: ' | cut -f2 -d: | awk '{ print$1 }' )
active=$(cat /proc/meminfo | grep 'Active: ' | cut -f2 -d: | awk '{ print$1 }' )
inactive=$(cat /proc/meminfo | grep 'Inactive: ' | cut -f2 -d: | awk '{ print$1 }' ) 
swaptotal=$(cat /proc/meminfo | grep 'SwapTotal: ' | cut -f2 -d: | awk '{ print$1 }' )
swapfree=$(cat /proc/meminfo | grep 'SwapFree: ' | cut -f2 -d: | awk '{ print$1 }' )

memtotal=$(( $memtotal / 1024 ))
memfree=$(( $memfree / 1024 ))
memavailable=$(( $memavailable / 1024 ))
active=$(( $active / 1024 ))
inactive=$(( $inactive / 1024 ))
swaptotal=$(( $swaptotal / 1024 ))
swapfree=$(( $swapfree / 1024 ))

echo "Gesamter-Arbeitsspeicher: "$memtotal" MB"
echo "Freier Arbeitsspeicher: "$memfree" MB"
echo "Verfügbarer Arbeitsspeicher ohne Swap: "$memavailable" MB"
echo "Belegter Speicher: "$active" MB"
echo "Speicher, der wieder belegt werden kann: "$inactive" MB"
echo "Swap-Speicher: "$swaptotal" MB"
echo "Freier Swap-Speicher: "$swapfree" MB"