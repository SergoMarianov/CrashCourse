#!/bin/bash

if [ -f ~/my_name.txt ]
then
       	echo "File already exist"
else
	echo "Serhii Marianov" > ~/my_name.txt
	echo "File created"
fi
