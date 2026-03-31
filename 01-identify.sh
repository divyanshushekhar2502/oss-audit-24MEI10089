#!/bin/bash
# Author: divyanshushekhar05-lab (24MEI10089)
# ------------------------------------------------------------
# Script: 01-identify.sh
# Purpose: Extract basic system information and display a
#          hard‑coded Open Source freedom message.
# ------------------------------------------------------------

# Function to print a decorative header
print_header() {
  echo "================================================================================"
  echo "                   Python AUDIT - SYSTEM IDENTITY                    "
  echo "================================================================================"
}

# Function to print a decorative footer
print_footer() {
  echo "--------------------------------------------------------------------------------"
  echo "Message: This system runs on Open Source software, providing freedom to study, change, and distribute."
  echo "================================================================================"
}

# Extract Linux distribution information from /etc/os-release
# The file contains KEY=VALUE pairs; we source it to get PRETTY_NAME.
if [[ -f /etc/os-release ]]; then
  . /etc/os-release
  distro="$PRETTY_NAME"
else
  distro="Unknown"
fi

# Kernel version using uname -r (release number)
kernel=$(uname -r)

# Current logged‑in user (environment variable $USER)
current_user=$USER

# Home directory of the current user (environment variable $HOME)
home_dir=$HOME

# System uptime in a human readable format (e.g., up 2 hours, 45 minutes)
# uptime -p prints "up ..."; we strip the leading "up " for cleaner output.
uptime_info=$(uptime -p | sed 's/^up //')

# Current date and time in the required format
current_date=$(date '+%a %b %d %Y %H:%M:%S %Z%z (%Z)')

# Display the collected information
print_header
printf "Linux Distribution: %s\n" "$distro"
printf "Kernel Version:     %s\n" "$kernel"
printf "Current User:       %s\n" "$current_user"
printf "Home Directory:     %s\n" "$home_dir"
printf "System Uptime:      %s\n" "$uptime_info"
printf "Current Date/Time:  %s\n" "$current_date"
print_footer
