#!/bin/bash

# This script grabs the front-side code of domain, parses it out, and sorts it according to what other referrer links might be present. 
# Please note this technique can be easily obfuscated by a domain host; but I believe that specifying user-agent strings (like in Curl)
# one can somewhat avoid this issue... I THINK

# please note this script is an example to show what you can do; this SPECIFIC script works SPECIFICALLY for www.cisco.com 
# Call this disc.sh
wget www.cisco.com ; cat index.html* | grep "href=" | cut -d "/" -f 3 | grep "\." | cut -d '"' -f 1 | sort -u  >> index.html

# We are now going to add onto this script and do some basic DNS and ICMP discovery
# Once you have the results from above, you can run this next piece of code on your HTML document
# For now just create another script called "whatever.sh"
for url in $(cat index.html); do
  host $url & nslookup $url | grep "has address" | cut -d " " -f 3 
done

# I want to combine these two into one...

# Here is a similar iteration of the top script

# Quick bash script to resolve a list of IPs to host
# You can cut and paste a large number of IPs into a text file and run this script to resolve

for ip in $(cat ip.txt); do
    nslookup $ip | grep "name" | cut -d " " -f 3 | uniq -u
done

# OR you can do it like this

while read list; do nslookup $list | grep "name" | cut -d " " -f 3 | uniq -u
done < ip.txt
