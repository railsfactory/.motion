#!/bin/bash 
find . -type f -name *.rb -print | grep spec|  xargs  cat