if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export XDG_CONFIG_HOME="$HOME/dotfiles"

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME='agnoster'

plugins=(git kubectl docker docker-compose zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $XDG_CONFIG_HOME/.p10k.zsh ]] || source $XDG_CONFIG_HOME/.p10k.zsh

export PATH="$HOME/.poetry/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="$HOME/dotfiles/bin:$PATH"

alias nv=nvim
alias python=python3.9

