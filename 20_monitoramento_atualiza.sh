#!/bin/bash
# Filtra o log do gerenciador de pacotes pela ação de "upgrade".
# Mostra o registro cronológico de quais softwares foram atualizados.
grep " upgrade " /var/log/dpkg.log | awk '{print $1, "-", $4}'