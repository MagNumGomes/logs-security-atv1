#!/bin/bash
# Logs de execução do sudo
grep "sudo:" /var/log/auth.log | grep "COMMAND=" | awk '{
  print $1, $2, $3, "| User:", $6, "| Cmd:", $NF
}'