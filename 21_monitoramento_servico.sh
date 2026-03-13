#!/bin/bash
# Erros/Warnings de um serviço específico
SVC="sshd"
grep "$SVC" /var/log/syslog | grep -Ei "error|warning"