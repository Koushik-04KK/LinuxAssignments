#!/bin/bash
if [ $# -lt 1 ]
then 
	echo "Enter the arguments"
else
	m=$1
	for((i=1;i<=$#;i++))
	{
		if [ $m -lt ${!i} ]
		then 
			m=${!i}
		else
			continue
		fi
	}
fi
echo $m

