#!/bin/sh
# iCloud Drive
# if folder exists, then iCloud Drive is enabled

iCloudDriveFolder="~/Library/Preferences/Mobile Documents"

if [ -e "${iCloudDriveFolder}"  ]; then
    echo "<result>Enabled</result>"
else
    echo "<result>Disabled</result>"
fi