#!/bin/bash
# Identifica usuários com falha de senha
LOG="/var/log/auth.log"

grep "Failed password" $LOG | awk '{
  for(i=1;i<=NF;i++) 
    if($i=="for") print $(i+1)
}' | sort | uniq -c