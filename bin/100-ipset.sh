#!/bin/sh
#Create an empty set of addresses when loading
[ "$1" != "start" ] && exit 0
ipset create proxylist hash:net
exit 0