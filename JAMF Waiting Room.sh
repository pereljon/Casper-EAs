#!/bin/bash
# JAMF Waiting Room

if [ -d /Library/Application\ Support/JAMF/Waiting\ Room ];then
    result=$(/bin/ls -1 /Library/Application\ Support/JAMF/Waiting\ Room/ 2> /dev/null | /usr/bin/grep -v ".cache.xml")
    if [ "$result" == "" ];then
        echo "<result>No packages</result>"
    else
        echo "<result>$result</result>"
    fi
else
    echo "<result>No waiting room</result>"
fi
exit 0