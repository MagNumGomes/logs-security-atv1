#!/bin/bash
# Busca padrões de nomes de dispositivos (disk, usb, sdX) no log principal.
# Filtra apenas linhas que contenham indicadores de erro grave.
grep -Ei "disk|usb|sda|sdb|nvme" /var/log/syslog | grep -Ei "error|fail|critical"