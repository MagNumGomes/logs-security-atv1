#!/bin/bash
# Extrai usuário e método (ssh/local) de falhas
grep "Failed password" /var/log/auth.log | awk '{
  u="desconhecido"; 
  for(i=1;i<=NF;i++) if($i=="for") u=$(i+1);
  m=($5 ~ /sshd/) ? "ssh" : "local";
  print "User:", u, "| Metodo:", m
}'