---
title: Cyrus
---

# Cyrus

POP3 a IMAP server.


Instalace balíčku Cyrus a nastavení restartu při změně konfiguračních souborů

```yaml
cyrus-imapd:
  pkg.installed:
    - name: cyrus-imapd-2.4
    - require:
        - service: saslauthd
  service.running:
    - name: cyrus-imapd
    - enable: True
    - watch:
        - file: /etc/cyrus.conf
        - file: /etc/imapd.conf
```

Balíček s nástroji pro administraci

```yaml
cyrus-admin-2.4:
  pkg:
    - installed
```

Nastavení spuštěných démonů a pravidelné údržby.

```yaml
/etc/cyrus.conf:
 file.managed:
  - source: salt://cyrus/cyrus.conf
  - mode: 644
  - user: root
  - group: root
  - watch_in:
      - service: cyrus-imapd
```

Nastavení imap serveru.

```yaml
/etc/imapd.conf:
 file.managed:
  - source: salt://cyrus/imapd.conf
  - mode: 644
  - user: root
  - group: root
  - template: jinja
  - require:
     - file: cert-dir-create
  - watch_in:
      - service: cyrus-imapd
```

Vytvoření adresáře pro sieve šablonu.

```yaml
sieve-template-dir-create:
  file.directory:
    - name: /etc/cyrus
    - user: root
    - group: root
    - mode: 0755
```

Výchozí skript pro filtrování pošty pomocí sieve.

```yaml
/etc/cyrus/default-sieve.script:
 file.managed:
  - source: salt://cyrus/default-sieve.script
  - mode: 644
  - user: root
  - group: root
```

Knihovna pro lepší editaci příkazové řádky v nástroji cyradm.

```yaml
libterm-readline-gnu-perl:
  pkg:
    - installed

Knihovna pro lepší editaci příkazové řádky v nástroji cyradm.

libterm-readline-perl-perl:
  pkg:
    - installed
```
