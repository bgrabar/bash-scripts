#!/bin/bash

# rename all *.jpeg to *.jpg

for f in *.jpeg; do
    mv "$f" "${f%.jpeg}.jpg"
done
