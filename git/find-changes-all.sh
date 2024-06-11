#!/bin/bash

# Find all files added and removed for each commit. This doesn't break out the commits but creates one big list.

touch z.changes-all.txt
x=0
y=1

until [ "$x" -ge 6 ]
do
    git diff head~$y head~$x --name-only | grep vx >> z.changes-all.txt
    x=$(expr $x + 1)
    y=$(expr $y + 1)
done


# THIS VERSION REMOVES MOST OF THE FILE TYPES
# do
#    git diff head~$y head~$x --name-only | grep vx | grep -v .xml | grep -v .txt | grep -v .htm | grep -v .hmxp | grep -v .xsd | grep -v .xsl | grep -v .js | grep -v .hmskin | grep -v .hmxz >> z.changes-all.txt
#    x=$(expr $x + 1)
#    y=$(expr $y + 1)
#done
