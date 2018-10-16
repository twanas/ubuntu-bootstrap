
# Bigger history
set -g history-limit 10000

# Reload key
unbind R
bind R source-file ~/.tmux.conf

# set fish default terminal
set -g default-command /usr/bin/fish
set -g default-shell /usr/bin/fish
