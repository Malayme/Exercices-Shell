#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Rentrez un nombre de seconde en argument"
    exit 1
fi

$1
passe=$(date +%s)

while true; do
    maintenant=$(date +%s)
    ecoulees=$((maintenant - passe))
    if [ $ecoulees -ge $1 ]; then
        break
    fi
done
