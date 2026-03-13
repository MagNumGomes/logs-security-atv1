#!/bin/bash
# Histórico de desligamento e reinicialização
last -x | grep -E "shutdown|reboot"