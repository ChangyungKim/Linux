#!/bin/sh
if [ -z $1 ]
then
	echo "Invalid input"
	exit 0
fi

if [ -z $2 ]
then
	echo "Invalid input"
	exit 0
fi
	
if [ $1 -le 0 -o $2 -le 0 ];
then
	echo "Input must be greater than 0"
	exit 0
fi

for var1 in $(seq 1 $1)
do
	for var2 in $(seq 1 $2)
	do
		printf "$var1*$var2=$(($var1 * $var2))\t"
	done
	printf "\n"
done
