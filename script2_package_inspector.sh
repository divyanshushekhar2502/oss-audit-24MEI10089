#!/bin/bash
# Author: divyanshushekhar2502 (24MEI10089)

echo "================================================================================"
echo "                   Python AUDIT - PACKAGE INSPECTOR                 "
echo "================================================================================"
if [ -f "/etc/debian_version" ]; then
  PACKAGE_MANAGER="apt"
  PACKAGE_NAME="python3"
else
  PACKAGE_MANAGER="yum"
  PACKAGE_NAME="python3"
fi

if $PACKAGE_MANAGER list --installed | grep -q $PACKAGE_NAME; then
  echo "Status: $PACKAGE_NAME is INSTALLED on this $(lsb_release -ds) system."
  echo "Version: $(python3 --version)"
else
  echo "Status: $PACKAGE_NAME is NOT installed on this $(lsb_release -ds) system."
fi

echo "--------------------------------------------------------------------------------"
echo "FOSS Philosophy Notes:"
echo " - Python: A high-level, interpreted programming language with a focus on code readability."
echo " - Linux: An open-source operating system that provides a free and customizable alternative to proprietary systems."
echo " - Git: A version control system that enables developers to track changes and collaborate on code."
echo " - Vim: A highly customizable text editor that provides a wide range of features for efficient coding and editing."
echo "================================================================================"
