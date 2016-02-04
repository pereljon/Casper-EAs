#!/bin/bash
# GlobalProtect User Portal MPR

theUsers=$(/usr/bin/who | grep -v admin)
if [ -n "${theUsers}" ]; then
    theConsoleUser=$(echo "${theUsers}" | awk '/console/{ print $1 }')
    if [ -n "${theConsoleUser}" ]; then
        theFile="/Users/${theConsoleUser}/Library/Application Support/PaloAltoNetworks/GlobalProtect/PanGpMPR.dat"
        theStat=$(stat -t "%Y-%m-%d %H:%M:%S" -x "${theFile}" | grep Modify | awk '{print $2 " " $3}')
        echo "<result>${theStat}</result>"
    fi
fi
exit 0