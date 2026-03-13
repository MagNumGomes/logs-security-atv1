#!/bin/bash
# Ranking de logs por serviço
awk '{print $5}' /var/log/syslog | cut -d'[' -f1 | cut -d':' -f1 | sort | uniq -c | sort -nr