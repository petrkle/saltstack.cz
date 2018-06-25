---
title: Vagrant
---

## Vagrant

[Vagrant](https://www.vagrantup.com) je automatizační nástroj pro [Virtualbox](https://www.virtualbox.org).

S jeho pomocí úplně zautomatizujeme [instalaci Debianu](/automaticka-instalace-debianu) do virtuálního počítače a následné spuštění saltstacku.

```bash
git clone https://github.com/petrkle/instantni-vps.git

cd instantni-vps

vagrant plugin install vagrant-hostsupdater

vagrant up
```

Nastavení jsou v souboru [Vagrantfile](https://github.com/petrkle/instantni-vps/blob/master/Vagrantfile)

Instalace vychází z šablony [pek/instantni-vps](https://atlas.hashicorp.com/pek/boxes/instantni-vps), kterou jsem vytvořil pomocí programu [Packer](/packer).
