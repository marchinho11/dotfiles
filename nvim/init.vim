call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree' 
Plug 'tpope/vim-commentary'
Plug 'akinsho/toggleterm.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'jiangmiao/auto-pairs'
Plug 'APZelos/blamer.nvim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()


source ~/dotfiles/nvim/settings.vim
source ~/dotfiles/nvim/theme.vim
source ~/dotfiles/nvim/nerd_tree.vim
source ~/dotfiles/nvim/airline.vim
source ~/dotfiles/nvim/fzf.vim
source ~/dotfiles/nvim/mappings.vim

lua require('init')

