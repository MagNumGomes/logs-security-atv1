#!/bin/bash
# O systemd registra no syslog quando serviços sobem ou descem.
# Filtramos esses eventos e usamos o awk para exibir a data e o serviço final.
grep "systemd" /var/log/syslog | grep -E "Started|Stopped" | awk '{
  print $1, $2, $3, "-", $NF
}'