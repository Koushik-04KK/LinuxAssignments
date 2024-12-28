#!/bin/bash
read -p "enter a number : " a
a=$(echo "$a" | sed 's/0*$//')
rev=$(echo $a| rev )
echo $rev
