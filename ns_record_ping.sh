#!/bin/bash

# Quick DNS NS Record Resolve and Ping Script
# $1 first argument given after ./<bash script>
# Make sure an argument was given, if not print the following

if [ -z "$1" ]; then # these brackets represent the test command 
echo "[*] DNS Resolver Script 
echo "[*] Usage: $0 <domain.name>"
exit 0

# If an argument was provided, then we will resolve the domain for its NS
for server in $(host -t ns $1 ; ping -c 1 $1);done
