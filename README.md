# positionFinder
This project demonstrates how it goes to determine the current  position within a Wifi-Network via coordinates of Wireless Access Point.

# infos

Scripts partly include Apple-Script-Elements
Scripts only testet on Mac OS X 10.10.5 (Yosemite)

# content

collectData.sh			— fill coordinates.json with new coordinates
coordinates.json		— contains coordinates and their respective information 
temp.json				— temp-file for coordinates.json
currentPosition.json	— contains coordinates of current position
compareJson.js			— compare coordinates.json with currentPosition.json
positionFinder.sh 		— include compareJson.js via node.js

# howto

1. create a link and the variable „-s“ to use the command „airport -s“
sudo ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport/usr/local/bin/airport
2. install node.js
https://nodejs.org/en/download/

3. edit the command „grep XXX“ in collectData.sh and positionFinder.sh
replace XXX with the SSID of your Wifi-Network
4. collecting coordinates by execute collectData.sh
command „sh -x collectData.sh“
5. execute findPosition.sh and look if it works
command „sh -x findPosition.sh“
6. enjoy and have fun
feel free to extend the project
