#!/bin/bash
# QMaster Network

userConsole=$(last -1 -t console | awk '{print $1}')
if [[ -n "$userConsole" ]]; then
    if [[ -f "/Users/${userConsole}/Library/Application Support/Compressor/CompressorConfig.plist" ]]; then
        theResult=$(defaults read "/Users/${userConsole}/Library/Application Support/Compressor/CompressorConfig.plist" qmasterconfig | grep NetworkConnection | awk '{print $3}')
        echo "<result>${theResult}</result>"
    else
        echo "<result>Missing</result>"
    fi
else
    exit 1
fi
exit 0