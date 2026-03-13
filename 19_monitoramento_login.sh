#!/bin/bash
# Monitora falhas de login em tempo real
tail -f /var/log/auth.log | grep --line-buffered "Failed password"