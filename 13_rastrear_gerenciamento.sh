#!/bin/bash
# Quem usou apt ou dpkg via sudo
grep -E "sudo.*(apt|dpkg)" /var/log/auth.log | awk '{
  print "Data:", $1, $2, "| User:", $6, "| Action:", $NF
}'