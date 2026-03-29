#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Yashita Nayyar | Course: Open Source Software
# Purpose: Checks if a package is installed and shows its details

# --- Define the package to inspect ---
PACKAGE="git"

# --- Check if package is installed ---
echo "================================================="
echo "        FOSS PACKAGE INSPECTOR                  "
echo "================================================="

if dpkg -l $PACKAGE &>/dev/null; then
    echo " Package  : $PACKAGE"
    echo " Status   : INSTALLED ✓"
    echo "-------------------------------------------------"
    # Get version info
    VERSION=$(dpkg -l $PACKAGE | grep $PACKAGE | awk '{print $3}')
    echo " Version  : $VERSION"
    # Get license info
    echo " License  : GNU GPL v2"
    echo " Website  : https://git-scm.com"
    echo "-------------------------------------------------"
else
    echo " $PACKAGE is NOT installed."
    echo " Installing now..."
    sudo apt-get install -y $PACKAGE
fi

# --- Case statement: philosophy note for each package ---
echo ""
echo " Open Source Philosophy:"
echo "-------------------------------------------------"
case $PACKAGE in
    git)
        echo " Git: Built by Linus Torvalds in 2005 when"
        echo " proprietary version control failed him."
        echo " Freedom to track, share and collaborate." ;;
    apache2)
        echo " Apache: The web server that built the open internet." ;;
    mysql)
        echo " MySQL: Open source at the heart of millions of apps." ;;
    firefox)
        echo " Firefox: A nonprofit fighting for an open web." ;;
    python3)
        echo " Python: A language shaped entirely by community." ;;
    *)
        echo " $PACKAGE: An open source tool built for freedom." ;;
esac

echo "================================================="
