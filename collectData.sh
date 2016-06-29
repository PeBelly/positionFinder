#!/bin/sh

#sh -x collectData.sh


#captureWifi

networksetup -setairportpower en1 on

position="$(airport -s | grep XXX | sort -k 3 | head -4 | grep -E -o "[a-z0-9][a-z0-9]:[a-z0-9][a-z0-9]:[a-z0-9][a-z0-9]:[a-z0-9][a-z0-9]:[a-z0-9][a-z0-9]:[a-z0-9][a-z0-9]" | tr -d "\n")"

networksetup -setairportpower en1 off 

#inputRoom

echo "In which room you are?:"

read room_variable

echo "You entered: $room_variable"

#generateJson

YYY="{\"id\": \""${position}"\", \"room\": \""$room_variable"\"}"

XXX="$(cat temp.json)"

echo ""${XXX}"", ""${YYY}"" > temp.json

ZZZ="$(cat temp.json)"

echo "["${ZZZ}"]" > coordinates.json