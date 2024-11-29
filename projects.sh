#!/bin/bash

set -e

# NOTE: only support 2 level nested dir, eg; /projects/coding/c
p=$(find ~/projects -mindepth 2 -maxdepth 2 -type d | fzf)

if [[ $p != "" ]]; then
    if [ ! -z $TMUX ]; then
        tmux neww -c $p "nvim -c \"lcd $p\" $p"
    else
        vim -c "lcd $p" $p
    fi
fi
