#!/bin/bash
# Busca palavras-chave de erros críticos no log do sistema usando 
# o operador OR (|) do grep estendido.
grep -Ei "critical|fatal|segfault" /var/log/syslog