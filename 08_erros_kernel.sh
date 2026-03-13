#!/bin/bash
# Erros críticos do kernel
dmesg | grep -Ei "error|fail|warn"