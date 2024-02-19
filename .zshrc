if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export XDG_CONFIG_HOME="$HOME/dotfiles"

plugins=(
    git 
    kubectl 
    docker 
    docker-compose 
    zsh-autosuggestions 
    zsh-syntax-highlighting
    terraform
)

ZSH_THEME='agnoster'
source $HOME/.oh-my-zsh/oh-my-zsh.sh
source $XDG_CONFIG_HOME/powerlevel10k/powerlevel10k.zsh-theme
source $XDG_CONFIG_HOME/.path.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $XDG_CONFIG_HOME/.p10k.zsh ]] || source $XDG_CONFIG_HOME/.p10k.zsh

export EDITOR=nvim

alias nv=nvim
alias python=python3

eval "$(pyenv init -)"
