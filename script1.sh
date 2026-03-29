#!/bin/bash
# Script 1: System Identity Report
# Author: Yashita Nayyar | Course: Open Source Software
# Purpose: Displays system information like a welcome screen

# --- Variables ---
STUDENT_NAME="Yashita Nayyar"
SOFTWARE_CHOICE="Git"
ROLL_NUMBER="24BCE10025"

# --- Collect system info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')
CURRENT_DATE=$(date '+%d %B %Y %H:%M:%S')
HOME_DIR=$HOME

# --- Display welcome screen ---
echo "================================================="
echo "        OPEN SOURCE SOFTWARE AUDIT              "
echo "================================================="
echo " Student  : $STUDENT_NAME"
echo " Roll No  : $ROLL_NUMBER"
echo " Software : $SOFTWARE_CHOICE"
echo "================================================="
echo " System Information"
echo "-------------------------------------------------"
echo " Distribution : $DISTRO"
echo " Kernel       : $KERNEL"
echo " Logged in as : $USER_NAME"
echo " Home Dir     : $HOME_DIR"
echo " Uptime       : $UPTIME"
echo " Date & Time  : $CURRENT_DATE"
echo "================================================="
echo " Git is licensed under GNU GPL v2"
echo " This means you are free to use, study, modify"
echo " and distribute it freely."
echo "================================================="
