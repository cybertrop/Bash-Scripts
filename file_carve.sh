# File carving examples

#!/bin/bash

cat md5.json | grep -Eo "md5.*" | awk -F "'" '{print $3,$7,$29}' | sed 's/|.....//g' | uniq | sort -u > exampl1.txt

cat parse4.txt | sed "s/'//g" | tr -s ',[a-z]' ',[A-Z]' > parse5.txt

cat parse9.csv | cut -d "," -f 2 | sort -u > parse9.txt ; cat parse9.txt | wc -l
