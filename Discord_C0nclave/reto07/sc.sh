#!/bin/bash

curl -s -c cookie.txt http://conclave.thehackerconclave.es:42107 -o file.jpg
zbarimg -q file.jpg | sed s/QR-Code:// > file.txt

while ! grep -q "Too slow!!" file.txt; do
        curl -s -b cookie.txt http://conclave.thehackerconclave.es:42107 -o file.jpg
        zbarimg -q file.jpg | sed s/QR-Code:// >> file.txt
done;

head -n -1 file.txt > temp.txt && mv temp.txt file.txt

base64 -d file.txt | qrencode -o qr.png
firefox qr.png
zbarimg qr.png
