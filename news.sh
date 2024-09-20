#!/bin/bash

set -e

node ~/project/actually-useful/pnd/pump \
--url https://news.ycombinator.com\?p= --selector .titleline --pages 2 \
| fzf -m \
| tee --append ~/.news-histories


# to discord
# | sed 's/^/article: /' \
# >> ~/project/automation/poor-man-automation/discord-pipe

# to browser
# | sed -E 's/.*(https)/\1/' \
# | xargs -r vivaldi-stable --incognito --app 
