#!/bin/bash
# GlobalProtect Settings Portal

GP_Settings="/Library/Preferences/com.paloaltonetworks.GlobalProtect.settings.plist"
if [ -f "$GP_Settings" ];then
    theReply=$(defaults read "$GP_Settings" | grep Portal | awk '{print $3}')
    echo "<result>$theReply</result>"
else
	echo "<result>Preferences not found</result>"
fi
exit 0