#!/bin/bash
# Lista atualizações (upgrades) de pacotes
grep " upgrade " /var/log/dpkg.log | awk '{print $1, "-", $4}'