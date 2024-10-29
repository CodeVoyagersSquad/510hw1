#!/bin/bash

gawk -F, '$3 == 2 && $13 ~ /S\s*/ { if ($7 != "") { sum += $7; count++ }; print $0 } END { if (count > 0) print "Average Age:", sum / count; else print "No valid ages" }' titanic.csv | sed 's/female/F/g' | sed 's/male/M/g'
