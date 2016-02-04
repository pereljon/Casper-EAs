#!/bin/bash
# Flip4Mac Serial Number

theSerial=$(/usr/bin/defaults read /Library/Preferences/net.telestream.wmv.plist SerialNumber)
if [ -n "${theSerial}" ]; then
    echo "<result>${theSerial}</result>"
else
    echo "<result>Not installed</result>"
fi
exit 0