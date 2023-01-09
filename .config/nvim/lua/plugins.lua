local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

require("packer").startup(function(use)
  use "axelvc/template-string.nvim"
  use "buztard/vim-rel-jump"
  use "christoomey/vim-tmux-navigator"
  use "Djancyp/better-comments.nvim"
  use "ErichDonGubler/lsp_lines.nvim"
  use "folke/which-key.nvim"
  use "gcmt/wildfire.vim"
  use "github/copilot.vim"
  use "godlygeek/tabular"
  use "jose-elias-alvarez/null-ls.nvim"
  use "lewis6991/gitsigns.nvim"
  use "lewis6991/spaceless.nvim"
  -- use "lukas-reineke/indent-blankline.nvim"
  use "glepnir/indent-guides.nvim"
  use "mbbill/undotree"
  use "navarasu/onedark.nvim"
  use "numToStr/Comment.nvim"
  use "NvChad/nvim-colorizer.lua"
  use "nvim-lualine/lualine.nvim"
  use "nvim-treesitter/playground"
  use "p00f/nvim-ts-rainbow"
  use "RRethy/vim-illuminate"
  use "tpope/vim-abolish"
  use "tpope/vim-fugitive"
  use "tpope/vim-rhubarb"
  use "tpope/vim-sleuth"
  use "tpope/vim-surround"
  use "wbthomason/packer.nvim"
  use "windwp/nvim-autopairs"
  use "windwp/nvim-ts-autotag"
  use "akinsho/toggleterm.nvim"

  use { "akinsho/bufferline.nvim", tag = "v3.*", requires = "nvim-tree/nvim-web-devicons" }
  use { "glepnir/lspsaga.nvim", branch = "main" }
  use { "nvim-telescope/telescope-fzf-native.nvim", run = "make", cond = vim.fn.executable "make" == 1 }
  use { "nvim-telescope/telescope.nvim", branch = "0.1.x", requires = { "nvim-lua/plenary.nvim" } }
  use { "nvim-treesitter/nvim-treesitter-textobjects", after = "nvim-treesitter" }

  use { "nvim-treesitter/nvim-treesitter",
    run = function()
      pcall(require("nvim-treesitter.install").update { with_sync = true })
    end
  }

  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
    }
  }

  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      -- Snippet Collection (Optional)
      { 'rafamadriz/friendly-snippets' },
    }
  }
  -- use { "neovim/nvim-lspconfig",
  --   requires = {
  --     "folke/neodev.nvim",
  --     "j-hui/fidget.nvim",
  --     "williamboman/mason-lspconfig.nvim",
  --     "williamboman/mason.nvim",
  --   }
  -- }

  -- use { "hrsh7th/nvim-cmp",
  --   requires = {
  --     "hrsh7th/cmp-buffer",
  --     "hrsh7th/cmp-cmdline",
  --     "hrsh7th/cmp-nvim-lsp",
  --     "hrsh7th/cmp-path",
  --     "hrsh7th/cmp-vsnip",
  --     "hrsh7th/lspkind-nvim",
  --     "hrsh7th/vim-vsnip",
  --     "L3MON4D3/LuaSnip",
  --     "rafamadriz/friendly-snippets",
  --     "saadparwaiz1/cmp_luasnip",
  --   }
  -- }

  if packer_bootstrap then
    require("packer").sync()
  end
end)

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
    autocmd BufWritePost plugins.lua PackerSync
  augroup end
]])
