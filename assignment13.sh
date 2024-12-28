#!/bin/bash

for r in {1..8}
do
for c in {1..8}
do
if (( (r+c)%2 == 0 )); then
                  echo -e -n "\e[40m  "
        else
                  echo -e -n "\e[47m  "
        fi
done
echo -e -n "\e[0m"
echo
done
