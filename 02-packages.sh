#!/bin/bash
# Author: divyanshushekhar2502 (24MEI10089)
# ------------------------------------------------------------
# Script: 02-packages.sh
# Purpose: Detect the package manager, verify Python installation,
#          report its exact version, and display philosophy notes
#          for four popular FOSS tools.
# ------------------------------------------------------------

# Function to print a decorative header/footer similar to other scripts
print_header() {
  echo "================================================================================"
  echo "                   Python AUDIT - PACKAGE INSPECTOR                 "
  echo "================================================================================"
}

print_footer() {
  echo "================================================================================"
}

print_header

# Detect the operating system and set variables for package manager and Python package name
if [[ -f /etc/os-release ]]; then
  . /etc/os-release
  os_id=$ID
else
  os_id="unknown"
fi

case "$os_id" in
  ubuntu|debian)
    pkg_manager="apt"
    python_pkg="python3"
    check_cmd="dpkg -s"
    ;;
  fedora|rhel|centos)
    pkg_manager="dnf"
    python_pkg="python3"
    check_cmd="rpm -q"
    ;;
  arch)
    pkg_manager="pacman"
    python_pkg="python"
    check_cmd="pacman -Qi"
    ;;
  opensuse*)
    pkg_manager="zypper"
    python_pkg="python3"
    check_cmd="rpm -q"
    ;;
  *)
    pkg_manager="unknown"
    python_pkg="python3"
    check_cmd=""
    ;;
esac

# Function to determine installation status and version
check_python() {
  if [[ -z "$check_cmd" ]]; then
    echo "Status: Unable to determine package manager for this distribution."
    return
  fi

  # Run the appropriate command and capture its exit status
  if $check_cmd "$python_pkg" >/dev/null 2>&1; then
    echo "Status: $python_pkg is INSTALLED on this $os_id system."
    # Retrieve version using the interpreter directly (more reliable across distros)
    if command -v python3 >/dev/null 2>&1; then
      version=$(python3 --version 2>&1 | awk '{print $2}')
    elif command -v python >/dev/null 2>&1; then
      version=$(python --version 2>&1 | awk '{print $2}')
    else
      version="unknown"
    fi
    echo "Version: $version"
  else
    echo "Status: $python_pkg is NOT installed on this $os_id system."
  fi
}

check_python

echo "--------------------------------------------------------------------------------"

echo "FOSS Philosophy Notes:"
case "$python_pkg" in
  python3|python)
    echo " - Python: A versatile, high‑level language that embodies the principle of readability and community‑driven development."
    ;;
esac
# Additional three tools – Git, Vim, GCC – with brief notes
cat <<'EOF'
 - Git: Distributed version control that empowers collaboration while preserving a complete history.
 - Vim: Modal editor that champions efficiency and extensibility through open plugins.
 - GCC: The GNU Compiler Collection, a cornerstone of free software that enables portable, optimized binaries.
EOF

print_footer
