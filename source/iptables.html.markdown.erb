---
title: iptables
---

# iptables

Nastavení jednoduchého linuxového firewallu.

Nejprve vytvoříme [skript pro nastavení firewallu](https://github.com/petrkle/instantni-vps/blob/master/salt/iptables/firewall).

```yaml
/etc/init.d/firewall:
 file.managed:
  - source: salt://iptables/firewall
  - mode: 755 
  - user: root
  - group: root
  - template: jinja
  - watch_in:
      - service: firewall
```

A pak nastavíme automatické spouštění po startu systému.

```yaml

firewall:
 cmd.run:
  - name: 'update-rc.d firewall defaults && /etc/init.d/firewall start'
  - cwd: /etc/init.d
  - user: root
  - group: root
  - unless: 'service firewall'
  - require:
     - file: /etc/init.d/firewall
 service.running:
  - name: firewall
  - enable: True
```
Firewall zakazuje všechno, kromě portů pro odesílání a příjem pošty, web a [ssh](/ssh/). Port na kterém běží ssh se doplní z proměnné [{{ pillar.ssh_port }}](https://github.com/petrkle/instantni-vps/blob/master/pillar/data.sls) a je tak vždy stejný jako v nastavení ssh démona.
