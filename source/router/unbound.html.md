---
title: unbound
---

# unbound

DNS server.

Instalace balíčku, spuštění a povolení služby.

```yaml
unbound:
  pkg:
    - installed
  service:
    - running
    - name: unbound
    - enable: True
```

Balíček s kořenovými certifikáty pro dnssec.


```yaml
unbound-anchor:
  pkg:
    - installed
```

[Nastavení](https://github.com/petrkle/debian-router/blob/master/salt/unbound/unbound.conf) DNS serveru unbound.

  
```yaml
/etc/unbound/unbound.conf.d/unbound.conf:
 file.managed:
  - source: salt://unbound/unbound.conf
  - template: jinja
  - mode: 644
  - user: root
  - group: root
  - watch_in:
      - service: unbound
```
