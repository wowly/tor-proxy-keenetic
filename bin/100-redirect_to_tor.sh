#!/bin/sh

[ "$type" == "ip6tables" ] && exit 0
[ -z "$(iptables -t nat -L | grep proxylist)" ] || exit 0

iptables -w -t nat -A PREROUTING -i br0 -p tcp -m set --match-set proxylist dst -j REDIRECT --to-port 9141
#Ban third-party dns-servers
#iptables -w -t nat -I PREROUTING -i br0 -p udp --dport 53 -j DNAT --to 192.168.0.1
#iptables -w -t nat -I PREROUTING -i br0 -p tcp --dport 53 -j DNAT --to 192.168.0.1

exit 0