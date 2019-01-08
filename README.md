# tor-proxy-keenetic

## Requirements:

!!!Важно!!!

 Данный способ возможен на моделях с USB-портами: 
* Keenetic/Zyxel с USB-портом и с версии NDMS V2.06.А.7 и старше с поддержкой OPKG:
Keenetic II, Keenetic III, Extra, Extra II, Giga II, Giga III, Omni, Omni II, Viva, Ultra, Ultra II, Omni (KN-1410), Extra (KN-1710), Giga (KN-1010), Ultra (KN-1810), Viva (KN-1910), DSL (KN-2010), Duo (KN-2110).
* Установленный OPKG (подробнее https://help.keenetic.com/hc/ru/articles/213968029)
* Установленный репозиторий Entware (подробнее https://forum.keenetic.net/topic/4299-entware/)
* Включенные «Модули ядра подсистемы Netfilter» в админке роутера.

!!!Важно!!!!
Придётся отключить штатный DNS-сервер в системе. Вместо него используется dnsmasq.
Вы потеряете возможность назначать DNS-сервисы (Яндекс.DNS/SkyDNS/AdGuard DNS) индивидуально для клиентов, но без проблем сможете использовать их глобально через настройки dnsmasq при необходимости.

## Dependencies:

* cron — планировщик заданий.
* bind-dig — DNS-клиент.
* dnsmasq-full — DNS-сервер.
* tor — сервис для использования сетей Tor.
* tor-geoip — база гео-IP для сетей Tor.
* ipset - утилита для работы со списками ip-адресов.
* iptables — утилита настройки firewall.

## Configuration:
## Using:

to be continue...