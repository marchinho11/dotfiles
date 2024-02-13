vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'preservim/nerdtree'
    use 'tpope/vim-commentary'
    use 'nvim-lualine/lualine.nvim'
    use 'akinsho/toggleterm.nvim'
    use { 'junegunn/fzf', run = ":call fzf#install()" }
    use 'junegunn/fzf.vim'
    use 'tpope/vim-fugitive'
    use 'rafi/awesome-vim-colorschemes'
    use 'nvim-treesitter/nvim-treesitter'
    use 'APZelos/blamer.nvim'
    use { 'fatih/vim-go', run = ':GoUpdateBinaries' }
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
