#!/bin/bash
cd dataset1 || { echo "Directory 'dataset1' not found"; exit 1; }
grep -l "sample" * | xargs grep -o "CSC510" | sort | uniq -c | grep -E '^[[:space:]]*[3-9] ' | sed 's/:CSC510//g' | gawk '{"stat -c%s " $2 | getline size; print $2 }' | sort -k1,1nr -k2,2nr | sed 's/file_/filtered_/g'