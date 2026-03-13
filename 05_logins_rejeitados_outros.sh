#!/bin/bash
# Usa Regex (grep -E) para buscar padrões de erro que indicam usuários 
# inexistentes ou falhas de permissão além da senha incorreta.
grep -E "invalid user|user unknown|check pass; user" /var/log/auth.log