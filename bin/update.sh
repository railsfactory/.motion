#!/bin/bash -ex
for dir in $( find  ./*/ -type d -maxdepth 0); do
echo $dir	
cd $dir && git pull origin master && cd ..
done