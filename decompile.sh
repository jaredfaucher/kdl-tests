#!/bin/bash

for i in *.knwf; 
do 
    wfname=$(echo "$i" | cut -f 1 -d '.') ;
    out="$wfname.kdl" ;
    kdlc -i "$i" -o "$out" &>/dev/null && echo "passed: $i" || echo "failed: $i" ; 
done
