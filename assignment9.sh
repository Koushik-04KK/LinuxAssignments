#!/bin/bash
read -p "enter a filename " k
sed -i '/^$/d' $k
cat $k
