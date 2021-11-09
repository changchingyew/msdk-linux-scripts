#!/bin/bash
while true; do
	top -b -n  1  | awk -F' *,? *' '/load average/ { printf "%s %s %s\n", $12, $13, $14 }'
	sleep 1
done
