#!/bin/bash
read -p "enter the boundry of elements to print: " n
a=0
b=1
echo $a
echo $b
for ((i=2;i<=n;i++)){
k=$((a+b))
a=$b
b=$k
echo $k 
}
