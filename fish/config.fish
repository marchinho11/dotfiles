set -gx XDG_CONFIG_HOME "$HOME/dotfiles"

eval (/opt/homebrew/bin/brew shellenv)

set -gx EDITOR nvim
alias nv=nvim
alias python=python3
alias g=git
alias k=kubectl

test -f $HOME/.claude.rc && source $HOME/.claude.rc

fish_add_path /Users/arseny/.pixi/bin
fish_add_path /Users/arseny/.local/bin

