#!/bin/bash



# find tmp directories with more than 1 MB anywhere in Library/Containers

find Library/Containers -name "tmp" -type d -exec sh -c '
  for d; do
    size_k=$(du -sk "$d" | cut -f1)
    if [ "$size_k" -ge 1024 ]; then
      echo "$d"
    fi
  done
' sh {} +



# NOTE: TMP DIRECTORIES THAT ARE NOT IN THE "USUAL" PLACE:

#Library/Containers/com.apple.Maps/Data/Library/Caches/CloudKit/d548e5089fa75a02a5d8877fd1d20c222e8eb37f/tmp

#Library/Containers/com.apple.Notes/Data/Library/Caches/CloudKit/6b66b81ae1c03677e771f2d5858b2005f4887321/tmp

#Library/Containers/com.microsoft.teams2/Data/Library/Application\ Support/Microsoft/MSTeams/tfw/tmp

#Library/Containers/com.microsoft.teams2/Data/Library/Application\ Support/Microsoft/MSTeams/tmp



# find tmp directories with more than 1 MB, specifically in Library/Containers/*/Data/tmp

# find Library/Containers/*/Data -name "tmp" -type d -exec sh -c '
#   for d; do
#     size_k=$(du -sk "$d" | cut -f1)
#     if [ "$size_k" -ge 1024 ]; then
#       echo "$d"
#     fi
#   done
# ' sh {} +
