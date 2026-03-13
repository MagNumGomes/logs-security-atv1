#!/bin/bash
# No dpkg.log, a palavra-chave "remove" indica desinstalação.
# O script imprime a data e o nome do pacote removido.
grep " remove " /var/log/dpkg.log | awk '{print $1, "->", $4}'