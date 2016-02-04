#!/bin/sh
# LoginItems

user=$(stat -f%Su /dev/console)
result=$(sudo -u "$user" /usr/bin/osascript -e "tell application \"System Events\"" -e "set tid to AppleScript's text item delimiters" -e "set AppleScript's text item delimiters to return" -e "set theLoginItems to the name of every login item" -e "set AppleScript's text item delimiters to return" -e "set theName to theLoginItems as text" -e "end tell" | tr '\r' '\n')
echo "<result>$result</result>"
exit 0