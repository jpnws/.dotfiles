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
  use "wbthomason/packer.nvim"
  use "folke/which-key.nvim"
  use "numToStr/Comment.nvim"
  use "christoomey/vim-tmux-navigator"
  use "Djancyp/better-comments.nvim"
  use "github/copilot.vim"
  use "tpope/vim-fugitive"
  use "tpope/vim-rhubarb"
  use "lewis6991/gitsigns.nvim"
  use "navarasu/onedark.nvim"
  use "nvim-lualine/lualine.nvim"
  use "lukas-reineke/indent-blankline.nvim"
  use "tpope/vim-sleuth"
  use "mbbill/undotree"
  use "nvim-treesitter/playground"
  use "windwp/nvim-autopairs"
  use "windwp/nvim-ts-autotag"
  use "p00f/nvim-ts-rainbow"
  use "axelvc/template-string.nvim"
  use "jose-elias-alvarez/null-ls.nvim"
  use "lewis6991/spaceless.nvim"
  use "tpope/vim-surround"
  use "norcalli/nvim-colorizer.lua"
  use "gcmt/wildfire.vim"
  use "tpope/vim-abolish"
  use "buztard/vim-rel-jump"
  use "ErichDonGubler/lsp_lines.nvim"

  use { "glepnir/lspsaga.nvim", branch = "main" }

  use { "nvim-telescope/telescope.nvim", branch = "0.1.x", requires = { "nvim-lua/plenary.nvim" } }
  use { "nvim-telescope/telescope-fzf-native.nvim", run = "make", cond = vim.fn.executable "make" == 1 }
  use { "akinsho/bufferline.nvim", tag = "v3.*", requires = "nvim-tree/nvim-web-devicons" }
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
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }

  use { "neovim/nvim-lspconfig",
    requires = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "j-hui/fidget.nvim",
      "folke/neodev.nvim"
    }
  }
  use { "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-nvim-lsp",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip"
    }
  }

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
