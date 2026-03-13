#!/bin/bash
# O last mostra logs de sessão. Filtramos apenas linhas que têm 
# duração calculada (entre parênteses) e removemos os símbolos com tr.
last | awk '$10 ~ /\(/ {print "User:", $1, "| Duração:", $10}' | tr -d '()'