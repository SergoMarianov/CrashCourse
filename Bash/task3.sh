#!/bin/bash

echo "Insert two numbers (tap ENTER after each)"
read a
read c
sum=$(($a + $c))
echo "sum = $sum"
if [ "$a" -lt "$c" ]
then
	echo "$a fewer"
else
	echo "$c fewer"
fi


