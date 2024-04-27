-- local overrides = require("custom.overrides")

local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },

  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "stevearc/conform.nvim",
    config = function()
      require "custom.configs.conform"
    end,
  },

  {
    "hedyhli/outline.nvim",
    config = function()
      require "custom.configs.outline"
    end,
  },

  {
    "kdheepak/lazygit.nvim",
    lazy = false,
    -- optional for floating window border decoration
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
  },

  {
    "akinsho/bufferline.nvim",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require "custom.configs.bufferline"
    end,
  },

  {
    "kevinhwang91/nvim-bqf",
    config = function()
      require "custom.configs.bqf"
    end,
  },

  {
    "Shatur/neovim-session-manager",
    lazy = false,
    -- optional for floating window border decoration
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
      require "custom.configs.session_manager"
    end,
  },

  {
    "ten3roberts/qf.nvim",
    config = function()
        require'qf'.setup{}
    end
  },

  {
    "smartpde/telescope-recent-files",
    lazy = false,
    config = function()
      require "custom.configs.recent_files"
    end,
  },

  { "mrcjkb/nvim-lastplace" },

  {
    "folke/flash.nvim",
    lazy = false,
    config = function()
      require "custom.configs.flash"
    end,
  },

  {
    "mrcjkb/rustaceanvim",
    version = '^4',
    lazy = false,
  },

  {
    "roobert/search-replace.nvim",
    lazy = false,
    config = function()
      require "custom.configs.search_replace"
    end,
  },

  {
    "mg979/vim-visual-multi",
    lazy = false,
  },

  {
    'phaazon/hop.nvim',
    lazy = false,
    branch = 'v2', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup{}
    end
  },

}


return plugins
