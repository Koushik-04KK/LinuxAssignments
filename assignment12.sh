#!/bin/bash
array=("$@")
for i in ${array[@]}
do 
echo ${#i}
done

