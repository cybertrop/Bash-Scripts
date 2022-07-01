#!/bin/bash

# Author: Cybertrop
# Date Created: 06/20/22
# Last Modified: 07/01/22

# Description: Back up script
# Usage: This will create a tarball of your home dir and save it accordingly

time=$(date +%H:%m:%S) # Command Substitution - capturing the value of the command and using parameter expansion to extract

echo "Hello, ${USER^}! The time is $time"
echo "I will now back up your home directory, $HOME"
currentdir=$(pwd)
echo "You are running this script from $currentdir"
echo "Therefore, I will save the backup in $currentdir "

tar -cf $currentdir/my_backp"$(date +%d-%m-%Y_%H-%M-%S)".tar ~/* 2>/dev/null
echo "Backup completed successfully!"

exit 0
