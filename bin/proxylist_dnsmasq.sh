#!/bin/sh

cat /dev/null > /opt/etc/proxylist.dnsmasq

while read line || [ -n "$line" ]; do

  [ -z "$line" ] && continue
  [ "${line:0:1}" = "#" ] && continue

  echo $line | grep -Eq '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' && continue

  echo "ipset=/$line/proxylist" >> /opt/etc/proxylist.dnsmasq

done < /opt/etc/proxylist.txt