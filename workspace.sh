#!/bin/bash

set -e

if [ ! -z $TMUX ]; then
    tmux kill-window -a \; neww '\
        echo TICKET: ;\
        read ticket;\
        teamocil connect-be;\
        tmux rename-session $ticket'
else
    echo 'not a tmux server'
    exit 1
fi
