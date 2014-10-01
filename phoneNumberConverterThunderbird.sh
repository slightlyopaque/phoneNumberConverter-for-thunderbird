#!/bin/bash
echo "Thunderbird shell script converter"
echo "Version 1.0 -- by slightlyopaque -- July 2014"
echo "Copyright: GNU General Public Licence v3" 
echo "This is free software: you are free to change and redistribute it. There is NO WARRANTY, to the extent permitted by law."
echo
echo "Converts .vcf Version 3.0 to Thunderbird-readable .vcf Version 2.1 to support telephone numbers of contacts"
echo
if [[ "$#" -ne 2 ]]; then
    echo "SYNOPSIS:" 
    echo "$0 [INPUT_FILE] [OUTPUT_FILE]"
    echo
    exit 1
fi
echo "converting from: $1"
echo "into: $2"
echo
cat "$1" | sed s/type=//g > "$2" && echo "Congrats! Your contacts have been exported to $2"
echo
