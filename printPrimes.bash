#!/bin/bash
echo -n "Lower bound: "
read -r lower
echo -n "Upper bound: "
read -r upper
[ $lower -gt $upper ] && echo Please enter a valid range && exit
while [ $lower -le $upper ]; do
	[ $(factor $lower | wc -w) -eq 2 ] && echo $lower
	((lower++))
done
