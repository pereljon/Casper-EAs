#!/bin/bash
# GlobalProtect User Portal

theUsers=$(/usr/bin/who | grep -v admin)
if [ -n "${theUsers}" ]; then
    theConsoleUser=$(echo "${theUsers}" | awk '/console/{ print $1 }')
    if [ -n "${theConsoleUser}" ]; then
        theResult=$(defaults read "/Users/${theConsoleUser}/Library/Preferences/com.paloaltonetworks.GlobalProtect" Portal)
        echo "<result>${theResult}</result>"
    fi
fi
exit 0