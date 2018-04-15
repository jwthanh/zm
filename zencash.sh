#!/bin/bash
SCREEN_NAME=zencash
LIMITED_POWER=50

for index in 0 1 2 3 4 5 6 7 8 9 10 11
do
	if screen -list | grep -q "${SCREEN_NAME}${index}"; then
		power_draw=$(nvidia-smi --id=$index --query-gpu=power.draw --format=csv,noheader,nounits)
		if [ 1 -eq "$(echo "${power_draw} < ${LIMITED_POWER}" | bc)" ];
		then
			screen -X -S $SCREEN_NAME$index quit
			screen -dmSL $SCREEN_NAME$index bash -c  "/home/evee/zm/zm --server zen.suprnova.cc --port 3618 --user v2tmobile.evee --pass 25251325 --dev ${index}"
			echo "restart GPU ${index}"
		fi
		echo "GPU ${index} is running normally"
  	else
		screen -dmSL $SCREEN_NAME$index bash -c  "/home/evee/zm/zm --server zen.suprnova.cc --port 3618 --user v2tmobile.evee --pass 25251325 --dev ${index}"
		echo "start GPU ${index}"
  	fi
done
