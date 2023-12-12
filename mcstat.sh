#!/bin/bash

MC_IP=mc.server.ip
MC_PORT=25565

printf "$(printf '\xFE\x01' | nc -w 1 $MC_IP $MC_PORT | sed 's/\x00\x00\x00/\n/g' | tr -d '\0' | tail -n +3)"
