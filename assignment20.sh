#!/bin/bash

if [ $# -ne 3 ]; then
    echo "Usage: $0 <starting_line> <number_of_lines> <filename>"
    exit 1
fi

tail -n +$1 "$3" | head -n $2
