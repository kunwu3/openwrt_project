#!/bin/sh -e
# based on https://gist.github.com/corny/7a07f5ac901844bd20c9

echo -e "400\n4\n10\n" | /opt/update/CloudflareScanner

ip=`cat result.csv | tail -n +2 | sort -t ',' -k 6 -g | tail -n 1 | awk -F, '{ print $1 }'`

curl -fsS "http://ipv4.dynv6.com/api/update?hostname=maopan.dns.army&token=5w7QNyKnnyyD_4fQ43YcpaghmzKctm&ipv4=$ip"
