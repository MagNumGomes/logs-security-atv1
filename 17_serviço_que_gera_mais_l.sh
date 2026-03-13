#!/bin/bash
# O awk isola o nome do serviço, o cut remove IDs de processo [PID].
# sort e uniq -c fazem a contagem e o sort -nr ordena do maior para o menor.
awk '{print $5}' /var/log/syslog | cut -d'[' -f1 | cut -d':' -f1 | sort | uniq -c | sort -nr