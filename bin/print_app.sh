#!/bin/bash 
find . -type f -name *.rb -print | grep app | xargs  cat