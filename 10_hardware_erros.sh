#!/bin/bash
# Problemas de hardware no syslog
grep -Ei "disk|usb|sda|sdb|nvme" /var/log/syslog | grep -Ei "error|fail|critical"