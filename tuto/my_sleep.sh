#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Rentrez un nombre de seconde en argument"
    exit 1
fi

seconds=$1
start=$(date +%s)

while true; do
    now=$(date +%s)
    elapsed=$((now - start))
    if [ $elapsed -ge $seconds ]; then
        break
    fi
done
