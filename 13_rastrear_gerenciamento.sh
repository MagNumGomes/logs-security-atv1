#!/bin/bash
# Identifica o uso de ferramentas de pacotes via sudo no auth.log.
# O awk formata a saída para mostrar o responsável e a ação realizada.
grep -E "sudo.*(apt|dpkg)" /var/log/auth.log | awk '{
  print "Data:", $1, $2, "| User:", $6, "| Action:", $NF
}'