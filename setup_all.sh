#!/bin/sh

# get directories without hidden
dirs=($(ls -d */))

# execute setup.sh of directory
for dir in $dirs
do
  chmod +x ./"$dir"setup.sh
  ./"$dir"setup.sh
done