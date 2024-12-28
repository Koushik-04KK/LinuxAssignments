#!/bin/bash

for item in *; do
    if [ -f "$item" ]; then
        mv "$item" "$(echo $item | tr 'A-Z' 'a-z')"
    elif [ -d "$item" ]; then
        mv "$item" "$(echo $item | tr 'a-z' 'A-Z')"
    fi
done
