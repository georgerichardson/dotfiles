#!/bin/sh

tmux kill-pane -a -t 0
tmux split-window -h -p 40
tmux split-window -v
tmux select-pane -D
tmux select-pane -D
tmux split-window -v
tmux select-pane -L
