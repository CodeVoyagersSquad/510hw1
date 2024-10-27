#!/bin/bash
cd dataset1 || { echo "Directory 'dataset1' not found"; exit 1; }

# Task a: List files containing "sample" and at least 3 occurrences of "CSC510" using grep and uniq

grep -l "sample" * |
xargs grep -o "CSC510" |
sed 's/:/ /' |
cut -d' ' -f1 |
sort |
uniq -c |
while read count file; do
    # Remove leading whitespace from count
    count=$(echo "$count" | sed 's/^ *//')
    if [ "$count" -ge 3 ]; then
        size=$(stat -c%s "$file")
        echo "$count $size $file"
    fi
done |

# Task b: Sort in descending order based on occurrences of "CSC510", breaking ties by file size

sort -k1,1nr -k2,2nr |

# Task c: Substitute "file_" with "filtered_" and list the final output

sed 's/file_/filtered_/g' |
cut -d' ' -f3
