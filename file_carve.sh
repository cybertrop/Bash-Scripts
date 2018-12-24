# File carving examples

#!/bin/bash

cat md5.json | grep -Eo "md5.*" | awk -F "'" '{print $3,$7,$29}' | sed 's/|.....//g' | uniq | sort -u > exampl1.txt
# Cat'ing a json file |  greping for a regex expression only matching the following string | using awk to output -
# specific fields | sed to substitute/remove the following string "|....." from a hostname | uniq and sorting our list to deduplicate

cat parse4.txt | sed "s/'//g" | tr -s ',[a-z]' ',[A-Z]' > parse5.txt
# Cat'ing out a text file | sed substitution/removal of an apostrophe | tr (translate) to subsittute a regex expression
# > output file

cat parse9.csv | cut -d "," -f 2 | sort -u > parse9.txt ; cat parse9.txt | wc -l
# Cat'ing a csv | cuting a file to output the second occurrence of a coma delimter | sorting for uniqueness | outputting and -
# determing length using wc -l 
