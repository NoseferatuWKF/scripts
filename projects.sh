#!/bin/zsh

source ~/.zshrc

set -e

stuff=$(hash -d | sed -E 's/.*=//')

# directory specifics
stuff+="\n$(find ~/project -mindepth 2 -maxdepth 2 -type d)"

dir=$(echo $stuff | fzf)

if [[ $dir != "" ]]; then
    if [ ! -z $TMUX ]; then
        tmux neww -c $dir "nvim -c \"lcd $dir\" $dir"
    else
        vim -c "lcd $dir" $dir
    fi
fi
