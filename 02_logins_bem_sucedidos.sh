#!/bin/bash
# Filtra por "Accepted", que indica sucesso na autenticação.
# O awk extrai a data (campos 1-3) e o nome do usuário (campo 9).
grep "Accepted" /var/log/auth.log | awk '{print $1, $2, $3, "-", $9}'