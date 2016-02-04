#!/bin/bash
# Display Graphics Chipset

result=$(system_profiler SPDisplaysDataType | grep Chipset | cut -c 22-)
echo "<result>$result</result>"
exit 0