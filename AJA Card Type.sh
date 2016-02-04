#!/bin/bash
# AJA Card Type

RESULT=$( /usr/sbin/system_profiler SPPCIDataType | grep -A 1 "0xf1d0" | grep "Device ID:" | awk '{print $3}' 2>/dev/null )
if [[ "${RESULT}" == "0xeb0c" ]]; then
    EA_RESULT="Kona4"
elif [[ "${RESULT}" == "0xdb02" ]]; then
    EA_RESULT="Kona3G"
elif [[ "${RESULT}" == "0xc0ff" ]]; then
    EA_RESULT="Kona3"
elif [[ -n "${RESULT}" ]]; then
    EA_RESULT="${RESULT}"
else
    EA_RESULT="Not installed"
fi
echo "<result>${EA_RESULT}</result>"
exit 0