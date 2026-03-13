#!/bin/bash
# Busca por falhas graves de memória (segfault) ou processos 
# finalizados pelo sistema (killed) no log geral.
grep -Ei "segfault|killed" /var/log/syslog