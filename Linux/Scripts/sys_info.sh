#!/bin/bash


#variables
output=$HOME/Research/sys_info.txt
ip=$(ip addr | grep inet | tail -2 | head -1)
suids=$(find / -type f -perm /4000)


#check if dir exsists, create if not 
if [ ! -d $HOME/Research ]
then 
	mkdir $HOME/Research
fi
#check if file exsists, delete if  does
if [ -f $output ]
then
	rm $output
fi

echo "A quick system audit script" >> $output
date >> $output
echo "" >> $output
echo "Machine Type Info:" >> $output
echo $MACHTYPE >> $output
echo -e "UName info: $(uname -a) \n" >> $output
echo -e "$ip \n" >> $output
echo "Hostname: $(hostname -s) " >> $output
echo "DNS Servers: " >> $output
cat /etc/resolv.conf >> $output
echo "Memory Info:" >> $output
free >> $output
echo -e "\nCPU Info:" >> $output
lscpu | grep CPU >>$output
echo -e "\nDisk Usage:" >> $output
df -H | head -2 >> $output
echo -e "\nWho is logged in: \n $(who) \n" >> $output
echo $suids >> $output



#variables2
#output=$HOME/Research/sys_info.txt
#shad=$(~/etc/shadow)
#pass=$(~/etc/passwd)
#host=$(~/etc/hosts)

#for shad in ${shad[@]}
#do
#	echo $ls -l
#done
