#!/bin/bash
# dmesg acessa o buffer de mensagens do kernel.
# O grep -Ei ignora maiúsculas/minúsculas para capturar erros e avisos.
dmesg | grep -Ei "error|fail|warn"