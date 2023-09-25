#!/bin/bash

set -e

bun ~/project/coding/javascript/swiper | fzf -m |
tee --append ~/.news-histories |
sed -E 's/.*(https)/\1/' |
~/project/coding/go/distributor/distributor |
xargs -r vivaldi-stable --incognito --app 
