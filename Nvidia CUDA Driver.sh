#!/bin/bash
# Nvidia CUDA Driver

ExtensionVersion=""
if [ -f /Library/Frameworks/CUDA.framework/Versions/Current/Resources/Info.plist ]
	then
	ExtensionVersion=$(defaults read /Library/Frameworks/CUDA.framework/Versions/Current/Resources/Info.plist CFBundleShortVersionString)
fi

if [ "$ExtensionVersion" == "" ]
	then
		ExtensionVersion="Not Installed"
fi

echo "<result>$ExtensionVersion</result>"

exit 0