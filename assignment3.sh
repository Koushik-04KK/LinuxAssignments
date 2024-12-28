#!/bin/bash
read -p "enter a number: " n
k=1
for((i=1;i<=n;i++))
{ 
	for((j=1;j<=i;j++))
	{
		echo -n "$k "
		let k++;
	}

echo -e "\n"
}

