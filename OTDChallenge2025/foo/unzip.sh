#!/bin/bash

while read LINE; do
	unzip -P $LINE flag.zip > /dev/null
done < "passes.txt"
