return {
  "nvim-lua/plenary.nvim",
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    opts = function()
      return require "configs.nvimtree"
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    opts = function()
      return require "configs.lualine"
    end,
  },
  {
    "stevearc/conform.nvim",
    event = "User FilePost",
    opts = require "configs.conform",
  },
  {
    "lewis6991/gitsigns.nvim",
    event = "User FilePost",
    opts = function()
      return require "configs.gitsigns"
    end,
  },
  { "tpope/vim-fugitive", event = "User FilePost" },
  {
    "mason-org/mason.nvim",
    lazy = false,
    cmd = { "Mason", "MasonInstall", "MasonUpdate" },
    opts = function()
      return require "configs.mason"
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      {
        -- snippet plugin
        "L3MON4D3/LuaSnip",
        dependencies = "rafamadriz/friendly-snippets",
        opts = { history = true, updateevents = "TextChanged,TextChangedI" },
        config = function(_, opts)
          require("luasnip").config.set_config(opts)
          require "configs.luasnip"
        end,
      },

      -- autopairing of (){}[] etc
      {
        "windwp/nvim-autopairs",
        opts = {
          fast_wrap = {},
          disable_filetype = { "TelescopePrompt", "vim" },
        },
        config = function(_, opts)
          require("nvim-autopairs").setup(opts)

          -- setup cmp for autopairs
          local cmp_autopairs = require "nvim-autopairs.completion.cmp"
          require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end,
      },

      -- cmp sources plugins
      {
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-nvim-lua",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
      },
    },
    opts = function()
      return require "configs.cmp"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    event = "User FilePost",
    config = function()
      require("configs.lspconfig").defaults()
      vim.lsp.enable { "pyright", "gopls", "terraformls", "lua_ls" }
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    cmd = "Telescope",
    opts = function()
      return require "configs.telescope"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    -- event = { "BufReadPost", "BufNewFile" },
    -- cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    lazy = false,
    build = ":TSUpdate",
    opts = function()
      return require "configs.treesitter"
    end,
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
  -- {
  --   "rebelot/kanagawa.nvim",
  --   lazy = false,
  --   opts = function()
  --     return {
  --       theme = "dragon",
  --       dimInactive = true,
  --       statementStyle = { bold = true },
  --       background = {
  --         dark = "dragon",
  --         light = "lotus",
  --       },
  --     }
  --   end,
  -- },
  -- {
  --   "projekt0n/github-nvim-theme",
  --   lazy = false,
  --   config = function()
  --     require("github-theme").setup {}
  --     vim.cmd "colorscheme github_dark_dimmed"
  --   end,
  -- },
  {
    "savq/melange-nvim",
    lazy = false,
    config = function()
      vim.cmd "colorscheme melange"
    end,
  },
  -- {
  --   "vague2k/vague.nvim",
  --   lazy = false,
  --   config = function()
  --     -- NOTE: you do not need to call setup if you don't want to.
  --     require("vague").setup {
  --       -- optional configuration here
  --     }
  --   end,
  -- },
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = false,
    build = "make",
    opts = function()
      return {}
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "hrsh7th/nvim-cmp",
    },
  },
  {
    "APZelos/blamer.nvim",
    event = "User FilePost",
    config = function()
      vim.g.blamer_enabled = 1
      vim.g.blamer_delay = 750
      vim.g.blamer_show_in_insert_modes = 0
      vim.g.blamer_date_format = "%d.%m.%y"
    end,
  },
}
