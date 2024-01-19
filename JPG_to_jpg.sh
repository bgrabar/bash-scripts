#!/bin/bash

# rename all *.JPG to *.jpg

for f in *.JPG; do
    mv "$f" "${f%.JPG}.jpg"
done
