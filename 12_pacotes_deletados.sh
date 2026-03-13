#!/bin/bash
# Lista pacotes removidos
grep " remove " /var/log/dpkg.log | awk '{print $1, "->", $4}'