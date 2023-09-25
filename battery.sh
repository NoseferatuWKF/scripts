#!/bin/bash

set -e

if [ $(uname -o) != "Darwin" ]; then
    echo "Only works on mac"
    exit 1
fi

magic=$(ioreg -l -w0 | grep -w CurrentCapacity | sed 's/[^0-9]*//g' | awk '{$1=$1};1')
echo 󱐌 $magic%
