if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export XDG_CONFIG_HOME="$HOME/dotfiles"

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME='agnoster'

plugins=(
    git 
    kubectl 
    docker 
    docker-compose 
    zsh-autosuggestions 
    zsh-syntax-highlighting
    terraform
)

source $ZSH/oh-my-zsh.sh
source ~/dotfiles/powerlevel10k/powerlevel10k.zsh-theme
source ~/dotfiles/.fzf.zsh
source ~/dotfiles/path.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $XDG_CONFIG_HOME/.p10k.zsh ]] || source $XDG_CONFIG_HOME/.p10k.zsh

export EDITOR=nvim

alias nv=nvim
alias python=python3
alias mux=tmuxinator
alias t=tmux

