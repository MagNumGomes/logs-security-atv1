#!/bin/bash
# Eventos entre 14h e 15h (hoje)
HOJE=$(date +'%b %e')
grep "^$HOJE 14:" /var/log/syslog