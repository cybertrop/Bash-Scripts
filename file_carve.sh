# Log Analysis and File Carving examples
#!/bin/bash

# Example 1:
# Cat'ing a JSON file to grep for any MD5 hash-browns and then using awk to output -
# specific fields then cleaning with sed to substitute/remove the following string "|....." from a hostname 
# and uniq and sorting our list to deduplicate
cat md5.json 
| grep -Eo "md5.*" 
| awk -F "'" '{print $3,$7,$29}' 
| sed 's/|.....//g' 
| uniq 
| sort -u > exampl1.txt

# Example 2
# Cat'ing out a text file | sed substitution/removal of an apostrophe | tr (translate) to subsittute a regex expression
# > output file
cat parse4.txt 
| sed "s/'//g" 
| tr -s ',[a-z]' ',[A-Z]' > parse5.txt

# Example 3
# Cat'ing a csv | cuting a file to output the second occurrence of a coma delimter | sorting for uniqueness | outputting and -
# determing length using wc -l 
cat parse9.csv 
| cut -d "," -f 2 
| sort -u > parse9.txt ; cat parse9.txt 
| wc -l

