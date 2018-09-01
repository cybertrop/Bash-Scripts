#!/bin/bash

# A couple of bash commands for basic but helpful tasks

# For those of us analyzing email contents we often find various data encodings; 
#! from there we visit external sites like http://base64online.org/decode/ to decode the data in order to 
#! discover any artifacts (in this case base64). I realized that its truly unknown whether the user input is stored on the 
#! domain after that; so in light of that here is a quick example of how securely decode data on your terminal in mac

touch txt.txt ; nano txt.txt # Create the txt file to dump our base64 encoded data into (copy and paste the data)
base64 -D txt.txt # Boom you win 


# POC of comparing differences amongst sorted files
# Here's a simple command (in terminal) to compare the difference between two files. 
# We have two lists of IPs. One list that Bob provided is a list containing IPs that an  internal user accessed, 
#! the other list is the list of original IPs provided by Jane, we want to see which of the user accessed IPs were in Janes's
#! list. We will call Bob's list ip.txt and Janes's list ip2.txt

# Please note both of these txt files should be sorted with "sort -u" or some similar Bash tool/algorithm 
sdiff ip.txt ip2.txt # This will show you the results
