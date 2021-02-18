#!/bin/bash

find . -type f -name "*.txt" -print0 | 
while IFS= read -r -d '' file; do
    printf '%s\n' "$file"
done
