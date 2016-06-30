# description
This project demonstrates how it goes to determine current position within a Wifi-Network via coordinates of Wireless Access Point.

# infos

Scripts only testet on Mac OS X 10.10.5 (Yosemite) <br/>
Scripts partly include AppleScript-Elements

# content

The project contains two Shell-Scripts, three Json-Files and one JavaScript-File <br/>

collectData.sh			— fill coordinates.json with new coordinates <br/>
coordinates.json		— contains coordinates and their respective information <br/>
temp.json				— temp-file for coordinates.json <br/>
currentPosition.json	— contains coordinates of current position <br/>
compareJson.js			— compare coordinates.json with currentPosition.json <br/>
positionFinder.sh 		— include compareJson.js via node.js <br/>

# howto

1. create a link and the variable „-s“ to use the command „airport -s“ <br/>
sudo ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport/usr/local/bin/airport <br/>

2. install node.js <br/>
https://nodejs.org/en/download/ <br/>

3. edit the command „grep XXX“ in collectData.sh and positionFinder.sh <br/>
replace XXX with the SSID of your Wifi-Network <br/>

4. collecting coordinates by execute collectData.sh <br/>
command „sh -x collectData.sh“ <br/>

5. execute findPosition.sh and look if it works <br/>
command „sh -x findPosition.sh“ <br/>

6. enjoy and have fun <br/>
feel free to extend the project <br/>
