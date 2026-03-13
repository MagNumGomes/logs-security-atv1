#!/bin/bash
# Data e hora do último boot
who -b | awk '{print $3, $4}'