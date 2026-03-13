#!/bin/bash
# Define uma variável com a data de 7 dias atrás para comparação.
# O awk verifica se a data do log é maior ou igual à data limite.
DATA_LIMITE=$(date -d "7 days ago" +%Y-%m-%d)
grep " install " /var/log/dpkg.log | awk -v d="$DATA_LIMITE" '$1 >= d {print $1, $4}'