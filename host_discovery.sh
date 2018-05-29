#!/usr/bin/bash

# This script grabs the front-side code of domain, parses it out, and sorts it according to what other referrer links might be present. 
# Please note this technique can be easily obfuscated by a domain host; but I believe that specifying user-agent strings (like in Curl)
# one can somewhat avoid this issue... I THINK

# please note this script is an example to show what you can do; this SPECIFIC script works SPECIFICALLY for www.cisco.com 
wget www.cisco.com > index.html ; cat index.html* | grep "href=" | cut -d "/" -f 3 | grep "\." | cut -d '"' -f 1 | sort -u
