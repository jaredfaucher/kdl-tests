#!/bin/bash

for i in *.kdl; 
do 
    wfname=$(echo "$i" | cut -f 1 -d '.') ;
    out="new_$wfname.knwf" ;
    kdlc -i "$i" -o "$out" &>/dev/null && echo "passed: $i" || echo "failed: $i" ; 
done
