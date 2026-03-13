#!/bin/bash
# Define o serviço e busca por erros ou avisos (warnings).
# Útil para debugar falhas em serviços específicos como sshd ou cron.
SVC="sshd"
grep "$SVC" /var/log/syslog | grep -Ei "error|warning"