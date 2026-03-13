#!/bin/bash
# O comando 'last -x' lê o arquivo /var/log/wtmp.
# O grep filtra as entradas de desligamento e reinicialização forçada.
last -x | grep -E "shutdown|reboot"