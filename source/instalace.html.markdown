---
title: Instalace
---

## Instalace

Postup pro Debian Stretch

```bash
echo 'deb http://repo.saltstack.com/apt/debian/9/amd64/latest stretch main' > /etc/apt/sources.list.d/saltstack.list

wget -q -O- "https://repo.saltstack.com/apt/debian/9/amd64/latest/SALTSTACK-GPG-KEY.pub" | apt-key add -

apt-get update

apt-get install -y salt-minion
```

Balíčky pro další distribuce: [repo.saltstack.com](https://repo.saltstack.com/)
