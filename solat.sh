#!/bin/bash

set -e

res=($(curl -s https://www.waktusolat.my/kuala-lumpur | grep '<meta name="description" content="Waktu Solat Kuala Lumpur dan Putrajaya 2024' | perl -pe "s/.+?(?=\d).+?(?=\D)\s//" | sed -E 's/".*//'))

for ((i=0; i<${#res[@]}; i+=3))
do
    echo "${res[$i]} ${res[$i + 1]} ${res[$i + 2]}"
done
