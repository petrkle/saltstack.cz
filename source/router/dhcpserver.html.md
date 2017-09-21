---
title: ISC DHCP server
---

# ISC DHCP server

Instalace balíčku.

```yaml
isc-dhcp-server:
  pkg:
    - installed
  service:
    - running
    - name: isc-dhcp-server
    - enable: True
```

[Nastavení dhcp serveru](https://github.com/petrkle/debian-router/blob/master/salt/dhcpserver/dhcpd.conf).


```yaml
/etc/dhcp/dhcpd.conf:
 file.managed:
  - source: salt://dhcpserver/dhcpd.conf
  - template: jinja
  - mode: 644 
  - user: root
  - group: root
  - watch_in:
      - service: isc-dhcp-server
```
Nastavení [síťových rozhraní](https://github.com/petrkle/debian-router/blob/master/salt/dhcpserver/isc-dhcp-server).

```yaml
/etc/default/isc-dhcp-server:
 file.managed:
  - source: salt://dhcpserver/isc-dhcp-server
  - template: jinja
  - mode: 644 
  - user: root
  - group: root
  - watch_in:
      - service: isc-dhcp-server
```
