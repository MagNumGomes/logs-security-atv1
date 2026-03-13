#!/bin/bash
# Relatório de logins aceitos
grep "Accepted" /var/log/auth.log | awk '{print $1, $2, $3, "-", $9}'