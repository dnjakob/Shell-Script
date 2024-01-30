#!/bin/bash

count=$(sudo cat /var/log/auth.log.1 | grep 'sudo: ' | wc -l)

echo "Die Anzahl der Loginversuche beträgt "$count