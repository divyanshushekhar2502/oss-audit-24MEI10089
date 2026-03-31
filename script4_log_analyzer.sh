#!/bin/bash
# Author: divyanshushekhar2502  (24MEI10089)
# ------------------------------------------------------------
# Script: 04-logs.sh
# Purpose: Analyze a given log file for a specific keyword. The script
#          counts total occurrences and prints the last five matching lines.
# ------------------------------------------------------------

# Ensure a log file path is supplied as the first argument
if [[ -z "$1" ]]; then
  echo "Usage: $0 <log_file_path> <keyword>"
  exit 1
fi

log_file="$1"
keyword="$2"

# Suggest a realistic default path for Python‑related logs (comment for user guidance)
# Example: /var/log/python3.10.log or /var/log/syslog where Python applications may write.

# Verify that the log file exists and is readable
if [[ ! -r "$log_file" ]]; then
  echo "Error: Log file '$log_file' does not exist or is not readable."
  exit 2
fi

# Initialize an array to hold matching lines
matches=()
count=0

# Read the log file line‑by‑line to avoid loading the entire file into memory
while IFS= read -r line; do
  if [[ "$line" == *"$keyword"* ]]; then
    ((count++))
    matches+=("$line")
  fi
done < "$log_file"

# Output the total count of matches
echo "Keyword '$keyword' found $count time(s) in $log_file."

# If there are matches, display the last five using tail semantics
if (( count > 0 )); then
  echo "--- Last 5 matching entries ---"
  # Use printf to output each stored line; then pipe to tail -n 5
  printf "%s\n" "${matches[@]}" | tail -n 5
else
  echo "No matching entries found."
fi
