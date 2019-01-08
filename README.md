# tor-proxy-keenetic
## Overview  

 Данный набор скриптов представляет собой прозрачный селекивный tor-proxy для роутеров Keenetic/Zyxel.  
 Проще говоря, доступ к ресурсам из списка будет осуществляться через tor-сеть, прозрачно для всех клиентов роутера.

## Requirements

* !!!Важно!!!  Keenetic/Zyxel с USB-портом и с версии NDMS V2.06.А.7 и старше с поддержкой OPKG:
Keenetic II, Keenetic III, Extra, Extra II, Giga II, Giga III, Omni, Omni II, Viva, Ultra, Ultra II, Omni (KN-1410), Extra (KN-1710), Giga (KN-1010), Ultra (KN-1810), Viva (KN-1910), DSL (KN-2010), Duo (KN-2110).
* Установленный OPKG (подробнее https://help.keenetic.com/hc/ru/articles/213968029)
* Установленный репозиторий Entware (подробнее https://forum.keenetic.net/topic/4299-entware/)
* Включенные «Модули ядра подсистемы Netfilter» в админке роутера.

!!!Важно!!!!  
Придётся отключить штатный DNS-сервер в системе. Вместо него используется dnsmasq.
Вы потеряете возможность назначать DNS-сервисы (Яндекс.DNS/SkyDNS/AdGuard DNS) индивидуально для клиентов, но без проблем сможете использовать их глобально через настройки dnsmasq при необходимости.

## Dependencies

* cron — планировщик заданий.
* bind-dig — DNS-клиент.
* dnsmasq-full — DNS-сервер.
* tor — сервис для использования сетей Tor.
* tor-geoip — база гео-IP для сетей Tor.
* ipset - утилита для работы со списками ip-адресов.
* iptables — утилита настройки firewall.

## Configuration  
Конфигурационные файлы находятся в папке conf.  
* ***dnsmasq.conf*** - файл конфигурации dnsmasq.  
В строке **listen-address=** вбейте локальный ip-адрес Вашего роутера. **По умолчанию "192.168.1.1"**.
* ***torrc*** - файл конфигурации tor.  
В строке **TransPort** вбейте локальный ip-адрес Вашего роутера. **По умолчанию "192.168.1.1"**.
* ***proxylist.txt*** - список ресурсов, доступ к которым будет осуществляться через tor-сеть.  
Можно использовать домен,ip-адрес и подсеть.

## Using

to be continue...