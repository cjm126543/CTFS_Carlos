#!/bin/bash

a=0
b=1

while ! grep -q "}" temp.txt; do
	c=$(( a + b ))
	curl -b cookie.txt "http://conclave.thehackerconclave.es:42103/$c" >> temp.txt
	a=$b
	b=$c
done;
