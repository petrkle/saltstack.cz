---
title: Automatická instalace Debianu
---

## Automatická instalace Debianu

Všechny příklady na [saltstack.cz](/) jsou vyzkoušené na Linuxové distribuci
[Debian](https://www.debian.org). Proto začneme instalací Debianu. A jak jinak než automatickou.

Nainstalujeme si [VirtualBox](automaticka-instalace-debianu) a do něj
si přidáme nový virtuální server. Nejlépe [pomocí skriptu](https://github.com/petrkle/debian/blob/master/virtualbox-add-machine.sh).


<img src="/img/debian-boot.png" style="width:100%;max-width:650px;" class="center"/>


Když se objeví první obrazovka instalátoru Debian, zmáčkněte klávesu <b>Esc</b> a zadejte:


```bash
auto url=http://petr.kle.cz/debian/jessie
```

<img src="/img/debian-auto.png" style="width:100%;max-width:730px;" class="center"/>


Proběhne automatická instalace podle [souboru předvoleb a post instalačního skriptu](https://github.com/petrkle/debian/tree/gh-pages).

Post instalační skript nainstaluje Saltstack, textový editor [vim](/vim) a přidá veřejný ssh klíč do adresáře uživatele petr.

Pro ještě pohodlnější instalaci poslouží [Vagrant](/vagrant), který automatizuje i vytvoření virtuálního počítače ve VirtualBoxu, s spuštění saltstacku.
