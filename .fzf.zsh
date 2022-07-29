export FZF_DEFAULT_COMMAND='ag --silent --hidden --ignore .git --ignore node_modules --ignore .cache --ignore venv --ignore .mypy_cache --ignore __pycache__ -g ""'

_fzf_compgen_path() {
  fd --hidden --follow --exclude .git --exclude node_modules --exclude .cache . "$1"
}

_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude .git --exclude node_modules . "$1"
}

