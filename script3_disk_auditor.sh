#!/bin/bash
# Author: divyanshushekhar2502 (24MEI10089)
# ------------------------------------------------------------
# Script: 03-auditor.sh
# Purpose: Audit a set of core system directories plus two Python‑specific
#          locations. For each existing directory, report its size, permissions,
#          and owner in neatly aligned columns.
# ------------------------------------------------------------

# Base directories that are generally interesting for a security/size audit
base_dirs=(/etc /var/log)

# Python‑specific directories – adjust the version numbers as appropriate for the host
python_dirs=(/usr/lib/python3.10 /usr/local/lib/python3.10/site-packages)

# Combine the arrays into a single list for iteration
all_dirs=(${base_dirs[@]} ${python_dirs[@]})

# Print a header for the tabular output
printf "% -30s % -12s % -12s % -s\n" "Directory" "Size" "Permissions" "Owner"
printf "%.0s-" {1..70}
printf "\n"

# Loop through each directory, verify existence, then extract details
for dir in "${all_dirs[@]}"; do
  if [[ -d "$dir" ]]; then
    # Use du to get the total size in a human‑readable format (e.g., 1.2G)
    size=$(du -sh "$dir" 2>/dev/null | cut -f1)
    # Use stat to fetch permissions (e.g., drwxr-xr-x) and owner name
    perms=$(stat -c "%A" "$dir")
    owner=$(stat -c "%U" "$dir")
    # Print the information using printf for aligned columns
    printf "% -30s % -12s % -12s % -s\n" "$dir" "$size" "$perms" "$owner"
  else
    # Directory does not exist – report it as missing for completeness
    printf "% -30s % -12s % -12s % -s\n" "$dir" "N/A" "N/A" "N/A"
  fi
done
