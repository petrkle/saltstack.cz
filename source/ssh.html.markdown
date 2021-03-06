---
title: SSH
---

## SSH

Secure shell slouží k bezpečnému připojení na váš [VPS](/vps) server.

Nejprve nainstalujeme balíček, který obsahuje ssh server

```yaml
openssh-server:
  pkg:
    - installed
```

A nastavíme, že služba ssh má být povolená a spuštěná.

```yaml
ssh:
  service.running:
	  - name: ssh
	  - enable: True
```

Jako další upravíme soubor /etc/ssh/sshd_config

```yaml
/etc/ssh/sshd_config:
 file.managed:
  - source: salt://ssh/sshd_config
  - mode: 644
  - user: root
  - group: root
  - template: jinja
  - watch_in:
      - service: ssh
```

[Šablona](https://github.com/petrkle/instantni-vps/blob/master/salt/ssh/sshd_config)
je v adresáři [ssh](https://github.com/petrkle/instantni-vps/tree/master/salt/ssh).
Mode, user a group určují nastavení přístupových práv.

template: jinja nastaví, že v šabloně můžeme použít proměnou [{{ pillar.ssh_port }}](https://github.com/petrkle/instantni-vps/blob/master/pillar/data.sls),
místo které se doplní port na kterém běží ssh server. Číslo portu se použije i v nastavení [iptables](/iptables/). Stačí ho tak změnit na [jednom místě](https://github.com/petrkle/instantni-vps/blob/master/pillar/data.sls) a nestane se vám, že si odříznete přístup na server.

A nakonec watch_in: service ... určuje, že při změně konfiguračního
souboru má dojít k restartu služby, aby se načetla nová konfigurace.

Dále pak upravíme [nastavení ssh](https://github.com/petrkle/instantni-vps/blob/master/salt/ssh/config) v domovském adresáři uživatele pro snadné připojování na další ssh servery.

```yaml
/home/{{ pillar.admin_user }}/.ssh/config:
 file.managed:
  - source: salt://ssh/config
  - mode: 600
  - user: {{ pillar.admin_user }}
  - group: users
```

Proměnná [{{ pillar.admin_user }}](https://github.com/petrkle/instantni-vps/blob/master/pillar/data.sls) obsahuje login uživatele, který spravuje server.
	
A nakonec upravíme soubor [.ssh/rc](https://github.com/petrkle/instantni-vps/blob/master/salt/ssh/rc)

```yaml
/home/{{ pillar.admin_user }}/.ssh/rc:
 file.managed:
  - source: salt://ssh/rc
  - mode: 700
  - user: {{ pillar.admin_user }}
  - group: users
```

Aby správně fungovalo předávání ssh klíčů i při použití programu screen.
