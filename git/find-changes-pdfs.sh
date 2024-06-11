#!/bin/bash

# Find all files added and removed for each commit

touch z.changes-pdf.txt
x=0
y=1

until [ "$x" -ge 2 ]
do
    git diff head~$y head~$x --name-only | grep vx | grep .pdf >> z.changes-pdf.txt
    x=$(expr $x + 1)
    y=$(expr $y + 1)
done
