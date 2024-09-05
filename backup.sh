#!/bin/bash

# Author: Link
# Date Created: 08/24/2024
# Date Modified: 08/24/2024

# Description:
# Backup script of all the files in the home directory and save them to .tar archive

# Usage
# backup_script

# tar -cvf ~/scripts/my_backup_$(date +%d-%m-%Y_%H-%M-%S)".tar ~/* 2>/dev/null

SCRIPTS_DIR=/Users/link/Desktop/scripts
currentdir=$(pwd)

echo -e "Hello $USER,\nI will now back up your current directory $currentdir"
echo -e "\nYou're running this script from $currentdir, but we will still store it in $SCRIPTS_DIR"

tar -cf $SCRIPTS_DIR/my_backup_"$(date +%d-%m-%Y_%H-%M-%S)".tar $currentdir 2>/dev/null

echo -e "\nBack up of $currentdir is now complete!"

exit 0
