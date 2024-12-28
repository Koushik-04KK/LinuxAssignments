#!/bin/bash
read -p "enter a number followed by a operation: " a
r=${a: -1}           
f=${a:0:1}

for ((i=1; i<${#a}-1; i++))  
{
    k=${a:$i:1}       
    f=$(($f$r$k))
}     
echo $f
