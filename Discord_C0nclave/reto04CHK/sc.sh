#!/bin/bash

while read -r line; do
	if ! curl -s "http://conclave.thehackerconclave.es:42104/$line" | grep -q "Fake"; then
		curl "http://conclave.thehackerconclave.es:42104/$line" > result.txt
		break;
	fi;
done <list.txt
