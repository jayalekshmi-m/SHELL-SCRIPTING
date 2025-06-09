#!/bin/bash

read -p "enter time:" time
hour=$(date -d "$time" +%H)
if [ "$hour" -ge 0 ] && [ "$hour" -lt 12 ]; then
echo "good morning"
elif [ "$hour" -ge 12 ] && [ "$hour" -lt 16 ]; then
echo "good afternoon"
elif [ "$hour" -ge 16 ] && [ "$hour" -lt 19 ]; then
echo "good evening"
else
echo "good night"
fi
