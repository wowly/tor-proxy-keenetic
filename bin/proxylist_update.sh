#!/bin/sh

ipset flush proxylist

/opt/bin/proxylist_ipset.sh
/opt/bin/proxylist_dnsmasq.sh
/opt/etc/init.d/S56dnsmasq restart