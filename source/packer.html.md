---
title: Packer
---

## Packer

[Packer](https://www.packer.io) je automatizační nástroj k vytváření šablon (.box soubory) pro [Vagrant](/vagrant).

S jeho pomocí úplně zautomatizujeme instalaci operačního systému do virtuálního počítače, základní nastavení a export do .box souboru.

```bash
packer build instantni-vps.json 
```

Soubor [instantni-vps.json](https://github.com/petrkle/instantni-vps/blob/master/packer/instantni-vps.json) obsahuje jednotlivé kroky instalace:

- stažení instalačního CD
- vytvoření virtuálního počítače
- zadání bootovacích parametrů
- spuštění poinstalačních skriptů
- export do .box souboru

Na vytvořený .box soubor pak odkazujeme v konfiguračním souboru [Vagrantfile](https://github.com/petrkle/instantni-vps/blob/master/Vagrantfile)
