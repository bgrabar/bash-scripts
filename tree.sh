#!/bin/bash

# prints the directory structure in the form of a tree
find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'
