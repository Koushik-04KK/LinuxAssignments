#!/bin/bash
read -p "enter a number " a
l=0
while [ $a -gt 0 ];
do
d=$(echo "$a%10" | bc ) 
a=$(($a/10))
l=$(($l*10+$d))
done
echo $l

