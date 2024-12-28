#!/bin/bash

if [ -z "$1" ]; then
    echo "Please provide a prefix name."
    exit 1
fi

prefix=$1
counter=1

for file in *; do
    if [ -f "$file" ]; then
        extension="${file##*.}"
        new_name=$(printf "%s%03d.%s" "$prefix" "$counter" "$extension")
        mv "$file" "$new_name"
        ((counter++))
    fi
done
