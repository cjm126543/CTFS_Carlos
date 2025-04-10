#!/bin/bash

touch foto.txt
for NUM in {1..99}; do
	curl -s "http://navarracybertalent.thehackerconclave.es:31512/image.php" -o "foto.png"
	zbarimg -q foto.png >> foto.txt
	sleep 0.9
done

cat foto.txt | sed "s/QR-Code://g" | tr -d '\n'
