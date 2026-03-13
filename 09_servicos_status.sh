#!/bin/bash
# Mudanças de status (Started/Stopped)
grep "systemd" /var/log/syslog | grep -E "Started|Stopped" | awk '{
  print $1, $2, $3, "-", $NF
}'