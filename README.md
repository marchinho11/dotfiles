### iterm2
1. Install fonts from `iterm2/`
2. Import iterm2 profile

### zsh
```bash
echo 'source $HOME/dotfiles/.zshrc' > ~/.zshrc
```

### nvim
1. Install deps
```bash
brew install \
    the_silver_searcher \
    fd \
    tmux \
    tig \
    tmuxinator \
    nvim
```
2. Install `vim-plug` and do `:PlugInstall`

#### lsp
- pyright, volar
```bash
npm install -g \
    pyright \
    @volar/vue-language-server
```
- metals
```bash
cs setup
cs install scala:2.13.8 scalac:2.13.8 
cs install metals:0.11.7
```

### lua format
```bash
brew install luarocks
luarocks install --server=https://luarocks.org/dev luaformatter
# lua-format -i ./**/*.lua
```

