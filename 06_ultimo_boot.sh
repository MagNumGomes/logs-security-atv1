#!/bin/bash
# O comando 'who -b' consulta o histórico de inicialização do sistema.
# O awk é usado apenas para formatar a saída exibindo data e hora.
who -b | awk '{print $3, $4}'