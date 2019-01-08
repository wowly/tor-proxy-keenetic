#!/bin/sh
until ADDRS=$(dig +short google.com @localhost) && [ -n "$ADDRS" ] > /dev/null 2>&1; do sleep 5; done
while read line || [ -n "$line" ]; do
  [ -z "$line" ] && continue
  [ "${line:0:1}" = "#" ] && continue
  echo $line | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}/[0-9]{1,2}' | awk '{system("ipset -exist add proxylist "$1)}'
  dig +short $line @localhost | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | awk '{system("ipset -exist add proxylist "$1)}'

done < /opt/etc/proxylist.txt