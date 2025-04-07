#!/bin/bash

while ! grep -q "C0nclave" temp.txt; do
	cat temp.txt | base64 -d > temp_decoded.txt
	mv temp_decoded.txt temp.txt
done;

echo "FIN"
