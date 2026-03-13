#!/bin/bash
# Pacotes instalados nos últimos 7 dias
DATA_LIMITE=$(date -d "7 days ago" +%Y-%m-%d)
grep " install " /var/log/dpkg.log | awk -v d="$DATA_LIMITE" '$1 >= d {print $1, $4}'