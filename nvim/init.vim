call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree' 
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-commentary'
Plug 'akinsho/toggleterm.nvim'
Plug 'lewis6991/gitsigns.nvim'
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
Plug 'dcampos/nvim-snippy'
Plug 'dcampos/cmp-snippy'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-lua/plenary.nvim'
Plug 'andrejlevkovitch/vim-lua-format'
Plug 'jiangmiao/auto-pairs'
Plug 'folke/todo-comments.nvim', {'branch': 'neovim-pre-0.8.0'}
Plug 'akinsho/bufferline.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'bryanmylee/vim-colorscheme-icons'
Plug 'hashivim/vim-terraform'
Plug 'marchinho11/lkml.vim'
Plug 'APZelos/blamer.nvim'
Plug 'terrastruct/d2-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'prettier/vim-prettier'
call plug#end()


source ~/dotfiles/nvim/settings.vim
source ~/dotfiles/nvim/theme.vim
source ~/dotfiles/nvim/nerd_tree.vim
source ~/dotfiles/nvim/airline.vim
source ~/dotfiles/nvim/fzf.vim
source ~/dotfiles/nvim/mappings.vim

lua require('init')

