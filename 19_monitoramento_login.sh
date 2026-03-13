#!/bin/bash
# O tail -f lê o arquivo continuamente. O --line-buffered do grep 
# garante que a saída apareça no terminal assim que o evento ocorrer.
tail -f /var/log/auth.log | grep --line-buffered "Failed password"