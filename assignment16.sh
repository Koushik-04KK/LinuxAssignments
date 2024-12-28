#!/bin/bash
read -p "enter the largest element to print: " n
a=0
b=1
echo  $a
echo  $b 
for ((i=2;i<=n;i++)){
k=$((a+b))
a=$b
b=$k
if (( $k > $n));then
break
fi
echo $k 
}
