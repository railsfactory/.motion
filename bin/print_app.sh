#!/bin/bash 
find . -type f -name *.rb -print | grep app |  while read filename; do
echo "$filename"
cat "$filename"
done