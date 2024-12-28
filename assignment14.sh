#!/bin/bash
function INC(){
for ((i = 0; i < n-1; i++)); do
   for ((j = 0; j < n-i-1; j++)); do
        if (( a[j] > a[j+1] )); then
            temp=${a[j]}
            a[j]=${a[j+1]}
            a[j+1]=$temp
        fi
    done
done
echo "Sorted array: ${a[@]}"
}


function DEC(){
for ((i = 0; i < n-1; i++)); do
   for ((j = 0; j < n-i-1; j++)); do
        if (( a[j] < a[j+1] )); then
            temp=${a[j]}
            a[j]=${a[j+1]}
            a[j+1]=$temp
        fi
    done
done
echo "Sorted array: ${a[@]}"
}

a=($@)

n=${#a[@]}

echo "How do you want to sort" 
echo "1)ascending"
echo "2)descending"
read -p "Enter your option: " k

case $k in
	1)INC ;;
	2)DEC ;;
	*) echo "Enter valid option";;
esac


