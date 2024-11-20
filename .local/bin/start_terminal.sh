#!/usr/bin/zsh
sleep 0.1
tmux attach -t default || ( sleep 0.1; tmux new -t default )
