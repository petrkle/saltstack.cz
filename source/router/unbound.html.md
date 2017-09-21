---
title: unbound
---

# unbound

DNS server


```yaml
unbound:
  pkg:
    - installed
  service:
    - running
    - name: unbound
    - enable: True
```

```yaml
unbound-anchor:
  pkg:
    - installed
```
  
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
