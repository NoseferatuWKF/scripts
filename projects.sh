#!/bin/zsh

source ~/.zshrc

dir=$(hash -d | sed -E 's/.*=//' | fzf)

if [[ $dir != "" ]]; then
    if [ ! -z $TMUX ]; then
        tmux neww -c $dir "nvim -c \"lcd $dir\" $dir"
    else
        vim -c "lcd $dir" $dir
    fi
fi
