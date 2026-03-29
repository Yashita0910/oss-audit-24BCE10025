#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Yashita Nayyar | Course: Open Source Software
# Purpose: Asks user 3 questions and generates a personal
#          open source philosophy statement, saves to a file

# --- Alias demonstration ---
# alias today='date +%d-%m-%Y'  # example of how aliases work in bash

echo "================================================="
echo "     OPEN SOURCE MANIFESTO GENERATOR            "
echo "================================================="
echo " Answer three questions to generate your"
echo " personal open source manifesto."
echo "================================================="
echo ""

# --- Ask user three questions using read ---
read -p " 1. Name one open-source tool you use every day: " TOOL
echo ""
read -p " 2. In one word, what does 'freedom' mean to you: " FREEDOM
echo ""
read -p " 3. Name one thing you would build and share freely: " BUILD
echo ""

# --- Get current date ---
DATE=$(date '+%d %B %Y')

# --- Define output filename ---
OUTPUT="manifesto_$(whoami).txt"

# --- Compose the manifesto paragraph ---
echo "=================================================" >> $OUTPUT
echo "     MY OPEN SOURCE MANIFESTO                   " >> $OUTPUT
echo "     Generated on: $DATE                        " >> $OUTPUT
echo "=================================================" >> $OUTPUT
echo "" >> $OUTPUT
echo " I believe in the power of open source software." >> $OUTPUT
echo " Every day I use $TOOL — a tool built freely by" >> $OUTPUT
echo " people who believed that knowledge should be shared," >> $OUTPUT
echo " not locked away. To me, freedom means $FREEDOM." >> $OUTPUT
echo "" >> $OUTPUT
echo " Open source taught me that the best software is" >> $OUTPUT
echo " built when people collaborate without boundaries." >> $OUTPUT
echo " That is why I would build $BUILD and share it" >> $OUTPUT
echo " freely with the world — because standing on the" >> $OUTPUT
echo " shoulders of giants means lifting others too." >> $OUTPUT
echo "" >> $OUTPUT
echo " Signed: Yashita Nayyar | Roll: 24BCE10025      " >> $OUTPUT
echo "=================================================" >> $OUTPUT

echo "-------------------------------------------------"
echo " Manifesto saved to: $OUTPUT"
echo "-------------------------------------------------"
echo ""

# --- Display the manifesto ---
cat $OUTPUT

