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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $XDG_CONFIG_HOME/.p10k.zsh ]] || source $XDG_CONFIG_HOME/.p10k.zsh

export PATH="$HOME/.poetry/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/dotfiles/bin:$PATH"
export PATH="/Users/u17485588/Library/Application Support/Coursier/bin:$PATH"
export PATH="/usr/local/sbin:$PATH" # rabbitmq
export PATH="$PATH:$HOME/.pub-cache/bin" # flutterfile
export PATH="/usr/local/lib/ruby/gems/3.1.0/bin:$PATH"
export PATH="$HOME/nvim-osx64/bin:$PATH"

export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mark/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mark/Downloads/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/mark/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mark/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export EDITOR=nvim

alias nv=nvim
alias python=python3.9
alias mux=tmuxinator
alias t=tmux

