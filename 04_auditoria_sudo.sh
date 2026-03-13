#!/bin/bash
# O sudo registra a execução de comandos. Filtramos por "COMMAND=" para 
# isolar ações efetivas e mostramos quem executou e qual foi o comando.
grep "sudo:" /var/log/auth.log | grep "COMMAND=" | awk '{
  print $1, $2, $3, "| User:", $6, "| Cmd:", $NF
}'