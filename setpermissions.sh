#!/bin/bash
  
echo "Looping through all home directory"

while IFS= read -r d; do
	if( ["$d" == gke*]  |  ["$d" == "chronos"] |  ["$d" == "kubernetes"] ); then
       exit 1; else
       echo $d
    fi
done < <(find /home/* -prune -type d)
