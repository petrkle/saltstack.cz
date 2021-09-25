---
title: icecast
---

# icecast

Vlastní internetové rádio. Skládá se z několika součástí:

## ezstream

Čte soubory z disku a posílá je do serveru icecast. Nastavení jsou v souboru [ezstream.xml](https://github.com/petrkle/debian-router/blob/master/salt/icecast/ezstream.xml)

V debianu je potřeba přidat vlastní [init skript](https://github.com/petrkle/debian-router/blob/master/salt/icecast/ezstream).

## icecast

Vysílá sobory do přehravače. Nastavení jsou v souboru [icecast.xml](https://github.com/petrkle/debian-router/blob/master/salt/icecast/icecast.xml)

## [next-song.pl](https://github.com/petrkle/next-song)

Vylosuje náhodnou skladbu a informace o ní zapíše do json souboru, který zobrazí [webový přehrávač](https://github.com/petrkle/web-radio-player).

## nginx

Funguje jako [proxy](https://github.com/petrkle/debian-router/blob/master/salt/nginx/conf/radio.conf), která zařídí přenos po https a přihlašování přes http auth.

## [MusicBrainz Picard](https://picard.musicbrainz.org)

Automatické doplnění ID3 tagů do souborů.
