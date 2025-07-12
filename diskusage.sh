#!/bin/bash
threshold=80
usage=$(df -h {} + | awk '{print$5}' | sed 's/%/ /')
if [ "$usage" -gt "$threshold" ]; then
echo "disk usage is more than $threshold" on $(hostname) | mail -s "diskusagealert" vamsip225143@gmail.com
fi
