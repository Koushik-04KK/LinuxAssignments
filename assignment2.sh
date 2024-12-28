#!/bin/bash
read -p "enter a number: " n
for((i=1;i<=n;i++))
{
	for((j=1;j<=i;j++)){
		echo -n "$j "
	}
echo -e "\n"
}
