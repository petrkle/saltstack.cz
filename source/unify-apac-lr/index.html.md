---
title: Ubiquiti UAP-AC-LR
---

# Ubiquiti UniFi AP-AC-LR

<img src="/img/unifi-ap-ac-lr.jpg" style="width:100%;max-width:1024px;" class="center"/>

<img src="/img/unifi-ap-ac-lr-otevrena-krabice.jpg" style="width:100%;max-width:1024px;" class="center"/>

<img src="/img/unifi-ap-ac-lr-obsah-baleni.jpg" style="width:100%;max-width:1024px;" class="center"/>

## Unifi Controller

Ovládací program k acces pointu. Instalace v debianu:

```bash
echo 'deb http://www.ubnt.com/downloads/unifi/debian stable ubiquiti' > /etc/apt/sources.list.d/	unificontroller.list

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 06E85760C0A52C50

apt-get update

apt-get install -y unify
```

Unifi Controller poslouchá na portu 8443.


## Vlastní certifikát pro https připojení k Unifi Controlleru

- Certifikáty jsou v souboru `/var/lib/unifi/keystore`, před úpravami je dobré udělat zálohu.
- Soubor otevřeme v programu [Portecle](http://portecle.sourceforge.net/)
- Heslo je: aircontrolenterprise
- Smažeme existující pár klíčů
- Vložíme nový pár klíčů přes Tools > Import Key Pair
- Heslo nastavíme na: aircontrolenterprise
- Název na: unifi
- Uložíme změny
- Soubor `keystore` zkopírujeme zpět a restartujeme Controller `/etc/init.d/unifi restart`

Pozor: soukromý klíč může mít 2048 bit. Unifi controller nepodporuje 4096 bit certifikáty.

pfx soubor pro import do keystore získáme konverzí:

```bash
openssl pkcs12 -inkey server.key -in server.cert -export -out server.pfx
```

Heslo zadáme:  aircontrolenterprise

### Program portecle

<img src="/img/portecle.png" style="width:100%;max-width:610px;" class="center"/>

### Platný certifikát
<img src="/img/unifi-controller-https.png" style="width:100%;max-width:857px;" class="center"/>
