#!/bin/bash

gawk -F, '$3 == 2 && $13 ~ /S\s*/ { age = ($7 == "" ? 0 : $7); print $0; sum += age; count++ } END { print "Average Age:", sum / count }' titanic.csv | sed 's/female/F/g' | sed 's/male/M/g'
