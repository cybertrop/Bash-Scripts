#!/bin/bash

# Simple LDAP query to find user data

ldapsearch -h 192.168.0.1 -b "DC=corp,DC=<domain name>,DC=com" "AccountName=username" 

# You can alter the IP range, the DC fields, and AccountName for however your system is configured
