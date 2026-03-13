#!/bin/bash
# Rejeições por usuário inexistente ou permissão
grep -E "invalid user|user unknown|check pass; user" /var/log/auth.log