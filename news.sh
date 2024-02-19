#!/bin/bash

set -e

bun ~/project/actually-useful/pnd/pump --url \
https://news.ycombinator.com\?p= --selector .titleline --pages 2 --url \
"https://lobste.rs/page/" --selector .link --pages 2 | fzf -m |
tee --append ~/.news-histories | sed -E 's/.*(https)/\1/' |
~/project/actually-useful/pnd/dump/dump |
xargs -r vivaldi-stable --incognito --app 
