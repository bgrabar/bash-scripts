#!/bin/bash

# find ~/Library/Containers/*/Data/Library/Caches diretories with more than 1 MB

find ~/Library/Containers/*/Data/Library -name "Caches" -type d -exec sh -c '
  for d; do
    size_k=$(du -sk "$d" | cut -f1)
    if [ "$size_k" -ge 1024 ]; then
      echo "$d"
    fi
  done
' sh {} +
