#!/bin/bash
# Script 4: Log File Analyzer
# Author: Yashita Nayyar | Course: Open Source Software
# Purpose: Reads a log file, counts keyword occurrences
#          and prints a summary
# Usage: ./script4.sh /path/to/logfile [keyword]

# --- Take log file and keyword as arguments ---
LOGFILE=${1:-"/var/log/dpkg.log"}
KEYWORD=${2:-"install"}
COUNT=0

echo "================================================="
echo "        LOG FILE ANALYZER                       "
echo "================================================="
echo " Log File : $LOGFILE"
echo " Keyword  : $KEYWORD"
echo "-------------------------------------------------"

# --- Check if file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo " Error: File $LOGFILE not found."
    echo " Trying alternative log file..."
    LOGFILE="/var/log/apt/history.log"
    if [ ! -f "$LOGFILE" ]; then
        echo " No log file found. Exiting."
        exit 1
    fi
fi

echo " Scanning file line by line..."
echo "-------------------------------------------------"

# --- Loop through file line by line ---
while IFS= read -r LINE; do
    # Check if line contains the keyword
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo " Keyword '$KEYWORD' found : $COUNT times"
echo "-------------------------------------------------"

# --- Print last 5 matching lines ---
echo " Last 5 matching lines:"
echo "-------------------------------------------------"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo "-------------------------------------------------"
# --- Summary ---
if [ $COUNT -eq 0 ]; then
    echo " No matches found for '$KEYWORD'"
elif [ $COUNT -lt 10 ]; then
    echo " Low activity detected for '$KEYWORD'"
else
    echo " Active log entries found for '$KEYWORD'"
fi

echo "================================================="
