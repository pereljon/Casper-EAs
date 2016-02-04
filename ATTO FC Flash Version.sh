#!/bin/bash
# ATTO FC Flash Version

if [[ -f /Applications/ATTO/CelerityFC8/atinfo ]];then
    result=$(/Applications/ATTO/CelerityFC8/atinfo -i controller | grep "Flash Version" | head -n 1 | awk '{print $3}')
    echo "<result>$result</result>"
elif [[ -f /Applications/ATTO/ThunderLinkFC8/atinfo ]];then
    result=$(/Applications/ATTO/ThunderLinkFC8/atinfo -i controller | grep "Flash Version" | head -n 1 | awk '{print $3}')
    echo "<result>$result</result>"
else
    echo "<result>Missing</result>"
fi
exit 0