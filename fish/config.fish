set -gx XDG_CONFIG_HOME "$HOME/dotfiles"

eval (/opt/homebrew/bin/brew shellenv)

set -gx EDITOR nvim
alias nv=nvim
alias python=python3
alias g=git
alias k=kubectl

test -f $HOME/.claude.rc && source $HOME/.claude.rc

fish_add_path ~/.pixi/bin
fish_add_path ~/.local/bin

status --is-interactive; and rbenv init - --no-rehash fish | source

set fish_greeting

function fish_right_prompt
  set -l k8s_color (set_color blue)
  set -l k8s_context (kubectl config current-context)

  echo -e -n -s $k8s_color "(k8s: $k8s_context)"
end

direnv hook fish | source

