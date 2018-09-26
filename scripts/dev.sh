#!/bin/sh

tmux kill-pane -a -t 0
tmux split-window -v -p 20
tmux select-pane -U
