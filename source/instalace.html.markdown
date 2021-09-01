---
title: Instalace
---

## Instalace

Postup pro Debian Stretch

```bash
wget -O /usr/share/keyrings/salt-archive-keyring.gpg https://repo.saltproject.io/py3/debian/10/amd64/latest/salt-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/salt-archive-keyring.gpg arch=amd64] https://repo.saltproject.io/py3/debian/10/amd64/latest buster main" > /etc/apt/sources.list.d/salt.list

apt-get update

apt-get install -y salt-minion
```

Balíčky pro další distribuce: [https://repo.saltproject.io](https://repo.saltproject.io/)
