#!/bin/bash
# Mensagens críticas e falhas de segmentação
grep -Ei "critical|fatal|segfault" /var/log/syslog