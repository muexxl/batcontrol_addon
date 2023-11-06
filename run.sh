#!/usr/bin/with-contenv bashio

i=0
while true
do
echo "Seconds passed: $i"
i=$(($i+1))
sleep 1
done