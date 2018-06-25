---
title: cryptsetup
---

# cryptsetup

K [APU2C4](/apu2c4) jde přes USB připojit externí disk a vyrobit tak jednoduché síťové uložiště. Pro případ reklamace je vhodné data na disku zašifrovat.

## Příprava disku

	cryptsetup -s 256 -y luksFormat /dev/sdX

	cryptsetup luksOpen /dev/sdX cdata

	mkfs.ext4 -m 0 -L data /dev/mapper/cdata

	cryptsetup luksClose cdata

Klíč pro odemykání šifrovaného disku vygenerujeme příkazem:

	dd bs=512 count=4 if=/dev/urandom of=externaldisk.key

Klíč přidáme k šifrovanému oddílu.

	cryptsetup luksAddKey /dev/sdX externaldisk.key


## Šifrovaný disk

Instalace balíčků.

```yaml
cryptsetup-bin:
  pkg:
    - installed

cryptsetup:
  pkg:
    - installed
```

Klíč pro šifrování disku.

```yaml
/etc/keys/externaldisk.key:
 file.managed:
  - source: salt://disk/externaldisk.key
  - mode: 600
  - user: root
  - group: root
  - makedirs: True
```

Tabulka šifrovaných disků.

```yaml
/etc/crypttab:
 file.managed:
  - source: salt://disk/crypttab
  - mode: 644
  - user: root
  - group: root
```

Do souboru crypttab doplníme UUID z výpisu programu `blkid`

	# <target name> <source device>   <key file>  <options>
	cdata UUID=xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx /etc/keys/externaldisk.key luks


Nakonec ještě může být potřeba upravit soubor `/lib/cryptsetup/cryptdisks.functions` kvůli chybě <a href="https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=792552">#792552</a>
