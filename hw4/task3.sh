#!/bin/bash

gawk -F, '$3 == 2 && $13 ~ /S\s*/ && $7 != "" {
    sum += $7;
    count++;
    print $0;
}' titanic.csv | sed 's/\bfemale\b/F/g' | sed 's/\bmale\b/M/g' > output.csv

gawk -F, '$3 == 2 && $13 ~ /S\s*/ && $7 != "" { sum += $7; count++ }
END { if (count > 0) print "Average Age:", sum / count; else print "No valid ages found." }' titanic.csv

echo "Filtered results saved in output.csv."
