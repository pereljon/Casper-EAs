#!/bin/bash
# ATTO FC Driver Version

if [[ -f /Applications/ATTO/CelerityFC8/atinfo ]];then
    result=$(/Applications/ATTO/CelerityFC8/atinfo -i controller | grep "Driver Version" | head -n 1 | awk '{print $3,$4}')
    echo "<result>$result</result>"
elif [[ -f /Applications/ATTO/ThunderLinkFC8/atinfo ]];then
    result=$(/Applications/ATTO/ThunderLinkFC8/atinfo -i controller | grep "Driver Version" | head -n 1 | awk '{print $3,$4}')
    echo "<result>$result</result>"
else
    echo "<result>Missing</result>"
fi
exit 0