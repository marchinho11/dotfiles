vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'nvim-tree/nvim-tree.lua'
    use 'numToStr/Comment.nvim'
    use 'JoosepAlviste/nvim-ts-context-commentstring'
    use 'nvim-lualine/lualine.nvim'
    use { 'junegunn/fzf', run = ":call fzf#install()" }
    use 'junegunn/fzf.vim'
    use 'tpope/vim-fugitive'
    use 'ellisonleao/gruvbox.nvim'
    use 'nyoom-engineering/oxocarbon.nvim'
    use 'projekt0n/github-nvim-theme'
    use 'nvim-treesitter/nvim-treesitter'
    use 'APZelos/blamer.nvim'
    use 'lewis6991/gitsigns.nvim'
    use 'terrastruct/d2-vim'
    use 'fatih/vim-go'
    use 'ziglang/zig.vim'
    use 'vim-crystal/vim-crystal'
    use 'rebelot/kanagawa.nvim'
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},
          -- Autocompletion
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-buffer'},
          {'hrsh7th/cmp-path'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'hrsh7th/cmp-nvim-lua'},
          {'L3MON4D3/LuaSnip'}
      }
    }
end)
