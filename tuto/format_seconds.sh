#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <secondes>"
    exit 1
fi

secondes=$1

while [ $secondes -ge 60 ]; do
    secondes=$(($secondes-60))
    minutes=$(($minutes+1))
    echo "$minutes : $secondes"
done

#transforme les secondes en minutes
