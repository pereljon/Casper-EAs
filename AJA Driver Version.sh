#!/bin/bash
# AJA Driver Version

version=$(find /Library/Extensions -name Info.plist -path *AJA*.kext* -exec defaults read {} CFBundleShortVersionString \;)
count=$(echo "$version"|grep -c '^')
if [[ $count -eq 1 ]];then
    echo "<result>$version</result>"
elif [[ $count -gt 1 ]];then
    echo "<result>Multiple drivers installed: $version</result>"
else
    echo "<result></result>"
fi
exit 0