#!/bin/bash

# find tmp directories in Library/Containers with more than 1 MB

# find Library/Containers -name "tmp" -type d -exec sh -c '
#   for d; do
#     size_k=$(du -sk "$d" | cut -f1)
#     if [ "$size_k" -ge 1024 ]; then
#       echo "$d"
#     fi
#   done
# ' sh {} +




# find Library/Containers/*/Data/tmp diretories with more than 1 MB

find Library/Containers/*/Data -name "tmp" -type d -exec sh -c '
  for d; do
    size_k=$(du -sk "$d" | cut -f1)
    if [ "$size_k" -ge 1024 ]; then
      echo "$d"
    fi
  done
' sh {} +
