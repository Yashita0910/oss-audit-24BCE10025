#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Yashita Nayyar | Course: Open Source Software
# Purpose: Loops through system directories and reports
#          their size, owner and permissions

# --- List of directories to audit ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "================================================="
echo "        DISK AND PERMISSION AUDITOR             "
echo "================================================="
echo " Auditing key system directories..."
echo "-------------------------------------------------"
printf "%-15s %-25s %-10s\n" "DIRECTORY" "PERMISSIONS/OWNER" "SIZE"
echo "-------------------------------------------------"

# --- Loop through each directory ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Get permissions and owner using ls and awk
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        # Get size using du
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        printf "%-15s %-25s %-10s\n" "$DIR" "$PERMS" "$SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo "-------------------------------------------------"
echo ""
echo " Checking Git config directory..."
echo "-------------------------------------------------"

# --- Check if git config directory exists ---
GIT_DIR="/etc/gitconfig"
if [ -f "$GIT_DIR" ]; then
    PERMS=$(ls -l $GIT_DIR | awk '{print $1, $3, $4}')
    echo " Git config found!"
    echo " Path        : $GIT_DIR"
    echo " Permissions : $PERMS"
else
    echo " Git global config not found at $GIT_DIR"
    echo " This is normal — Git config is per-user"
    echo " Your personal config is at: ~/.gitconfig"
    PERMS=$(ls -l ~/.gitconfig 2>/dev/null | awk '{print $1, $3, $4}')
    if [ -n "$PERMS" ]; then
        echo " User config permissions: $PERMS"
    fi
fi

echo "================================================="
