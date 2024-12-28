#!/bin/bash
function SSH()
{
read -p "enter username: " user
read -p "enter ipaddr: " ipaddr
ssh $user@$ipaddr
}

function SCP(){
read -p "enter username: " user
read -p "enter ipaddr: " ipaddr
echo "Choose an option from below:"
echo -e "1.local to remote\n2.remote to local"
read option
read -p "enter the filename: " s
read -p "enter the destination" d
case $option in 
	1) scp $s $user@$ipaddr:$d ;;
	2) scp $user@$ipaddr:$s $d ;;
	*) echo "Enter a valid option";; 
esac
}
echo "choose an option from below"
echo "1.ssh"
echo "2.scp"
read opt
case $opt in 
	1) SSH;; 
	2) SCP;; 
	*) echo "Enter a valid option";;
esac 
