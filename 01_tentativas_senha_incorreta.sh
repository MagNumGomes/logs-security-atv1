#!/bin/bash
# Alvo: /var/log/auth.log
# Busca falhas de login. O grep filtra as linhas, o awk percorre os campos 
# para achar o usuário após a palavra "for", e o uniq conta as ocorrências.
grep "Failed password" /var/log/auth.log | awk '{
  for(i=1;i<=NF;i++) 
    if($i=="for") print $(i+1)
}' | sort | uniq -c