#!/bin/bash
# Processos encerrados por erro grave
grep -Ei "segfault|killed" /var/log/syslog