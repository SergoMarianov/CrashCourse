#!/bin/bash
while (true)
do
	date >> ~/processPerMinute
	user=$(whoami)
	echo "User $user" >> ~/processPerMinute
	allPs=$(ps -Al | wc -l)
	echo "All processes $allPs" >> ~/processPerMinute
	userPs=$(ps | wc -l)
	echo "User processes $userPs" >> ~/processPerMinute
	sleep 60
done

