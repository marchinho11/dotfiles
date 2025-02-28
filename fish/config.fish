set -gx XDG_CONFIG_HOME "$HOME/dotfiles"

eval (/opt/homebrew/bin/brew shellenv)

set -gx EDITOR nvim
alias nv=nvim
alias python=python3
alias g=git

test -f $HOME/.claude.rc && source $HOME/.claude.rc

