---
title: Instalace Debianu
---

# Instalace Debianu

Pomocí programu [UNetbootin](https://unetbootin.github.io/) zapíšeme Debian CD [netinst.iso](https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-9.1.0-amd64-netinst.iso) na USB flash disk.

<img src="/img/unetbootin.png" style="width:100%;max-width:534px;" class="center"/>

Na vytvořeném flash disku upravíme soubor `syslinux.cfg`. Doplníme parametr jádra:

```bash
vga=off console=ttyS0,115200n8
```

pro vypnutí grafického výstupu a aktivaci sérivé konzole.

<a href="/img/apu2c4-instalace-debianu.jpg"><img src="/img/s.apu2c4-instalace-debianu.jpg" style="width:100%;max-width:800px;" class="center"/></a>

<img src="/img/apu2c4-debian.png" style="width:100%;max-width:724px;" class="center"/>

<img src="/img/apu2c4-debian-ii.png" style="width:100%;max-width:721px;" class="center"/>
