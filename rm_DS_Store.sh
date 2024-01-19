#!/bin/bash

# remove .DS_Store from current directory and subdirectories,
# down to the fourth level of subdirectories

rm .DS_Store */.DS_Store */*/.DS_Store */*/*/.DS_Store */*/*/*/.DS_Store
