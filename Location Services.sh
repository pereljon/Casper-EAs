#!/bin/bash
# Location Services

uuid=$(/usr/sbin/system_profiler SPHardwareDataType 2> /dev/null | grep "Hardware UUID" | awk '{print $3}')
status=$(/usr/bin/defaults read /var/db/locationd/Library/Preferences/ByHost/com.apple.locationd."$uuid" LocationServicesEnabled)
if [[ $status == 1 ]]; then
    echo "<result>Enabled</result>"
else
    echo "<result>Disabled</result>"
fi
exit 0