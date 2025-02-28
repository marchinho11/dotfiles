vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'nvim-tree/nvim-tree.lua'
    use 'numToStr/Comment.nvim'
    use 'nvim-lualine/lualine.nvim'
    use { 'junegunn/fzf', run = ":call fzf#install()" }
    use 'junegunn/fzf.vim'
    use 'tpope/vim-fugitive'
    use 'nvim-treesitter/nvim-treesitter'
    use 'APZelos/blamer.nvim'
    use 'lewis6991/gitsigns.nvim'
    use 'terrastruct/d2-vim'
    use 'fatih/vim-go'

    -- Avante
    use 'stevearc/dressing.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'MunifTanjim/nui.nvim'
    use 'MeanderingProgrammer/render-markdown.nvim'
    use 'HakonHarnes/img-clip.nvim'

    use {
        'yetone/avante.nvim',
        branch = 'main',
        run = 'make',
        config = function()
          require('avante').setup()
        end
    }

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
