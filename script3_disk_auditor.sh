#!/bin/bash
# Author: divyanshushekhar2502 (24MEI10089)

dirs=("/etc" "/var/log" "/usr/bin" "/usr/lib" "/var/www" "/home" "/root" "/usr/local/lib/python3" "/usr/lib/python3")

echo "================================================================================"
echo "                   Python AUDIT - DIRECTORY AUDITOR                 "
echo "================================================================================"
for dir in "${dirs[@]}"; do
  if [ -d "$dir" ]; then
    echo -e "$dir\t$(du -sh $dir | awk '{print $1}')\t$(stat -c %a $dir)\t$(stat -c %U $dir)"
  else
    echo "$dir does not exist"
  fi
done

echo "================================================================================"
