#!/bin/bash
# O comando busca linhas que iniciam com a data atual e a hora 14:00.
# O circunflexo (^) garante que a busca ocorra no início da linha (carimbo de tempo).
HOJE=$(date +'%b %e')
grep "^$HOJE 14:" /var/log/syslog