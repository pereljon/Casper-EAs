#!/bin/bash
# ATTO FC Node

if [[ -f /Applications/ATTO/CelerityFC8/atinfo ]];then
    result=$(/Applications/ATTO/CelerityFC8/atinfo -i controller | grep "Node Address" | awk '{print $3}')
    echo "<result>$result</result>"
elif [[ -f /Applications/ATTO/ThunderLinkFC8/atinfo ]];then
    result=$(/Applications/ATTO/ThunderLinkFC8/atinfo -i controller | grep "Node Address" | awk '{print $3}')
    echo "<result>$result</result>"
else
    echo "<result>Missing</result>"
fi
exit 0