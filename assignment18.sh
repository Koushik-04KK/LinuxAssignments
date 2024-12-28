#!/bin/bash

if [ -z "$1" ]; then
    echo "Please provide a new name for the directory."
    exit 1
fi

current_dir=$(basename "$PWD")
mv "$current_dir" "$1"
```
