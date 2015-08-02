---
title: Testovací prostředí
---

## Testovací prostředí

Při testování [Instantní VPS](https://github.com/petrkle/instantni-vps/) je v souboru /etc/salt/grains

```yaml
testmachine: OK
```

V sls souborech se pak podle této proměnné používají různé
domény a nastavení pro doručování pošty.

Kvůli snadnému nastavení používám pro spouštění virtuální
počítačů VirtualBox.

<img src="/img/virtualbox.png" style="width:100%;max-width:817px;" class="center"/>

V nastavení sítě vybereme NAT.

<img src="/img/nastaveni-site.png" style="width:100%;max-width:769px;" class="center"/>

A nastavíme překlad portu, na kterém běží ssh (2234), na port, na
který se budeme připojovat (2231).

<img src="/img/predavani-portu.png" style="width:100%;max-width:632px;" class="center"/>


## .ssh/config

Pro snadné připojení zadáme hodnoty do souboru $HOME/.ssh/config


```bash
Host salt
  Hostname=localhost
  ForwardAgent yes 
  ForwardX11 no
  Port=2231
  IdentityFile=~/crypto/mykey_id_rsa

```

Pak už se k testovacímu počítači můžeme připojit příkazem:

```bash
ssh salt -D 8888
```

Přepínač -D 8888 vytvoří SOCKS proxy na portu 8888. Pomocí doplňku [FoxyProxy](https://addons.mozilla.org/cs/firefox/addon/foxyproxy-standard/) pak můžeme jednoduše přistupovat na weby, které poběží na testovacím virtuálním serveru.

<img src="/img/foxy-proxy-socks.png" style="width:100%;max-width:983px;" class="center"/>

<img src="/img/ff-proxy.png" style="width:100%;max-width:406px;" class="center"/>
