#!/bin/bash
# Author: divyanshushekhar05-lab (24MEI10089)

echo "================================================================================"
echo "                   Python AUDIT - SYSTEM IDENTITY                    "
echo "================================================================================"
echo "Linux Distribution: $(lsb_release -ds)"
echo "Kernel Version:     $(uname -r)"
echo "Current User:       $(whoami)"
echo "Home Directory:     $(pwd)"
echo "System Uptime:      $(uptime)"
echo "Current Date/Time:  $(date)"
echo "--------------------------------------------------------------------------------"
echo "Message: This system runs on Open Source software, providing freedom to study, change, and distribute."
echo "================================================================================"