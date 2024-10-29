#!/bin/bash
cd dataset1 || { echo "Directory 'dataset1' not found"; exit 1; }

grep -l "sample" * |
xargs grep -o "CSC510" |
sed 's/:/ /' |
cut -d' ' -f1 |
sort |
uniq -c |

gawk '{ if ($1 >= 3) { "stat -c%s " $2 | getline size; print $1, size, $2 } }' |
sort -k1,1nr -k2,2nr |

sed 's/file_/filtered_/g' | cut -d' ' -f3
