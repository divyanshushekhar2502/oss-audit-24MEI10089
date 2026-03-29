#!/bin/bash
# Author: divyanshushekhar05-lab (24MEI10089)
# Suggested log path for Python: /var/log/syslog

echo "================================================================================"
echo "                   Python AUDIT - LOG FILE ANALYZER                 "
echo "================================================================================"
LOG_FILE="$1"
KEYWORD="$2"

count=0
while read -r line; do
  if [[ $line == *$KEYWORD* ]]; then
    ((count++))
  fi
done < "$LOG_FILE"
echo "Found $count occurrences of '$KEYWORD' in $LOG_FILE"
tail -n 5 $LOG_FILE | grep $KEYWORD
echo "================================================================================"