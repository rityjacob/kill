#!/bin/bash

while [ 1 ]
do
x=$(ps  -ux --no-headers | tr -s " " | cut -d " " -f2,3,4 | sort -t " " -k3 | tail -1|cut -d " " -f3)
if [ $x>5.0 ] 
 then
	echo killing
	y=$(ps  -ux --no-headers | tr -s " " | cut -d " " -f2,3,4 | sort -t " " -k3 | tail -1|cut -d " " -f1)
	kill $y
fi
done
