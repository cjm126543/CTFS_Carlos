#!/bin/bash
while true; do
  curl -s "http://navarracybertalent.thehackerconclave.es:31511/" | grep '<div class="flag">' | grep "flag" | cut -d'>' -f2 | cut -d'<' -f1 >> response.txt;
done;
