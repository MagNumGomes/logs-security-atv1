#!/bin/bash
# Rastreia troca de usuário (su)
grep "su:session" /var/log/auth.log | awk '{
  print "De: " $11 " Para: " $13
}' | sed 's/(to//g; s/)//g'