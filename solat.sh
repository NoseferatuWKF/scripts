#!/bin/bash

set -e

period=(Imsak Subuh Syuruk Zuhur Asar Maghrib Isya)
time=($(curl -s https://www.waktusolat.my/kuala-lumpur | grep 'span' | perl -pe 's/\D*//' | perl -pe 's/(:\d*).*/\1/'))

for i in ${!time[@]}
do
    echo "${period[$i]}: ${time[$i]}" 
done
