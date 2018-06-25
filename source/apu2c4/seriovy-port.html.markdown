---
title: Sériový port
---

# Sériový port

[PC Engines APU2C4](/apu2c4) komunikuje pomocí sériového portu.

V dnešních počítačích a noteboocích ale většinou najdeme USB. Budeme proto potřebovat převodník.

<a href="/img/ucab232.jpg"><img src="/img/s.ucab232.jpg" style="width:100%;max-width:800px;" class="center"/></a>

Převodník i APU2C4 má konektor typu F. Proto je ještě potřeba kabel, který má konektory typu M. V obchodě ho najdete pod názvem "laplink" nebo "null modem".

<a href="/img/serial-laplink.jpg"><img src="/img/s.serial-laplink.jpg" style="width:100%;max-width:800px;" class="center"/></a>

K sériovému portu se připojíme programem [picocom](https://github.com/npat-efault/picocom), který umí zobrazit UTF8 znaky.

```bash
picocom -b115200 /dev/ttyUSB0
```
