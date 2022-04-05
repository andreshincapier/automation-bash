#!/bin/bash

SUB='(1)'  #Parameter to seach

for file in path/where/file*; do
     if [[ "$file" =~ .*"$SUB".* ]]; then
        mv "$file" `echo $file | tr ' ' '_'`; #Replace white spaces
        rm $file #Delete file
     fi
done