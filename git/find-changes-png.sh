#!/bin/bash

# Find all files added and removed for each commit

touch z.changes-png.txt
x=0
y=1

until [ "$x" -ge 4 ]
do
    git diff head~$y head~$x --name-only | grep vx | grep .png >> z.changes-png.txt
    x=$(expr $x + 1)
    y=$(expr $y + 1)
done
