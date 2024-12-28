#!/bin/bash
read -p "enter two numbers and an operator: " a b c
case $c in 
	+) echo "$a+$b"|bc ;;
        -) echo "$a-$b"|bc ;; 
        *) echo "$a*$b"|bc ;; 
        /) echo "$a/$b"|bc ;;
	*) echo "Enter arithmetic operator only"
esac
 

