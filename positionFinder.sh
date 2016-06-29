#!/bin/sh

#sh -x positionFinder.sh

COUNTER=0

while [  $COUNTER -lt 10 ]; do

	#captureWifi

	networksetup -setairportpower en1 on

	position="$(airport -s | grep XXX | sort -k 3 | head -4  | grep -E -o "[a-z0-9][a-z0-9]:[a-z0-9][a-z0-9]:[a-z0-9][a-z0-9]:[a-z0-9][a-z0-9]:[a-z0-9][a-z0-9]:[a-z0-9][a-z0-9]" | tr -d "\n")"

	networksetup -setairportpower en1 off

	echo "[{\"id\": \""${position}"\", \"room\": \"Room: \"}]" > currentPosition.json

	#compareJson 

	result="$(node compareJson.js)"

	osascript -e 'display notification "'"${result}"'" with title "Current Position"'

	let COUNTER=COUNTER+1																																											

	sleep 10

done