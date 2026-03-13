#!/bin/bash
# O comando su gera logs de abertura de sessão. 
# O awk identifica a origem e o destino, enquanto o sed limpa os parênteses.
grep "su:session" /var/log/auth.log | awk '{
  print "De: " $11 " Para: " $13
}' | sed 's/(to//g; s/)//g'