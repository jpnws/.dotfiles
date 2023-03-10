-- Install Packer automatically on any system.
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

-- Needed for installing packer automatically.
local packer_bootstrap = ensure_packer()

require("packer").startup(function(use)
    use "wbthomason/packer.nvim" -- Neovim package manager.
    use "godlygeek/tabular" -- Aligning text by some characters like =, -, etc.
    use "tpope/vim-surround" -- Mappings to change & delete surrounding chars in pairs.
    use "tpope/vim-unimpaired" -- Add newlines before or after cursor line.
    use "christoomey/vim-tmux-navigator" -- Move between vim and tmux panes.
    use "nvim-treesitter/nvim-treesitter" -- Neovim interface for tree-sitter (parser generator tool building syntax tree).

    -- Jump to any position in visible editor area with 2-char search pattern.
    use { "ggandor/leap.nvim",
        requires = { "tpope/vim-repeat" },
        config = function()
            require("leap").add_default_mappings()
        end
    }

    -- nvim-lspconfig and nvim-cmp config boilerplate manager.
    use {
        "VonHeikemen/lsp-zero.nvim",
        requires = {
            -- LSP Support
            { "neovim/nvim-lspconfig" },
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },

            -- Autocompletion
            { "hrsh7th/nvim-cmp" },
            -- { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "saadparwaiz1/cmp_luasnip" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-nvim-lua" },

            -- Snippets
            { "L3MON4D3/LuaSnip" },
            -- Snippet Collection (Optional)
            { "rafamadriz/friendly-snippets" },
        },
        config = function()
            local lsp = require("lsp-zero")
            lsp.preset("recommended")
            lsp.ensure_installed({
                "tsserver",
                "eslint",
                "sumneko_lua",
                "rust_analyzer",
            })
            lsp.configure("sumneko_lua", {
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" }
                        }
                    }
                }
            })
            local cmp = require("cmp")
            local cmp_select = { behavior = cmp.SelectBehavior.Select }
            local cmp_mappings = lsp.defaults.cmp_mappings({
                ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
                ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
                ["<C-y>"] = cmp.mapping.confirm({ select = true }),
                ["<C-Space>"] = cmp.mapping.complete(),
            })
            cmp_mappings["<Tab>"] = nil
            cmp_mappings["<S-Tab>"] = nil
            lsp.setup_nvim_cmp({
                mapping = cmp_mappings
            })
            lsp.set_preferences({
                sign_icons = {
                    error = "E",
                    warn = "W",
                    hint = "H",
                    info = "I",
                }
            })
            lsp.setup()
        end
    }

    -- Fuzzy search engine.
    use { "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        requires = { "nvim-lua/plenary.nvim" },
        config = function()
            require("telescope").setup {}
        end
    }

    -- Source code formatter.
    use { "jose-elias-alvarez/null-ls.nvim",
        run = function()
            local status, prettier = pcall(require, "prettier")
            if (not status) then return end
            prettier.setup({
                bin = "prettierd",
                filetypes = {
                    "javascript",
                    "javascriptreact",
                    "typescript",
                    "typescriptreact",
                    "css",
                    "scss",
                    "json",
                    "graphql",
                    "markdown",
                    "yaml",
                    "html",
                    "vue",
                    "svelte",
                }
            })
        end,
        config = function()
            local null_ls = require("null-ls")
            null_ls.setup {
                sources = {
                    null_ls.builtins.formatting.prettierd,
                    null_ls.builtins.formatting.rustfmt,
                    null_ls.builtins.formatting.fixjson
                }
            }
        end
    }

    -- One dark theme.
    use { "navarasu/onedark.nvim",
        config = function()
            require("onedark").setup {
                style = "darker",
                colors = {
                    black = "#000000",
                    bg0 = "#000000", -- Buffer BG.
                    bg1 = "#0F0F0F", -- Row highlight
                    bg2 = "#000000",
                    bg3 = "#323641", -- Visual highlight.
                    bg_d = "#000000", -- Neotree BG.
                }
            }
            require("onedark").load()
        end
    }
    -- Automatically strip trailing whitespace as you are editing.
    use { "lewis6991/spaceless.nvim",
        config = function()
            require("spaceless").setup {}
        end
    }

    -- Shows mapped keys on the bottom upon keypresses.
    use { "folke/which-key.nvim",
        config = function()
            require("which-key").setup {}
        end
    }

    -- Automatic string to template string converter.
    use { "axelvc/template-string.nvim",
      config = function()
        require("template-string").setup {}
      end
    }

    -- Renders indentation guides with lines or bg colors.
    use { "glepnir/indent-guides.nvim",
        config = function()
            require("indent_guides").setup {
                indent_guide_size = 8;
                even_colors = { fg = "#1b1b1b", bg = "#1b1b1b" };
                odd_colors = { fg = "#0f0f0f", bg = "#0f0f0f" };
                exclude_filetypes = { "help", "dashboard", "NvimTree", "packer", "Neotree" };
            }
        end
    }

    -- Git decorations for modifications and diffs.
    use { "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup {
                signs = {
                    add = { text = "+" },
                    change = { text = "~" },
                    delete = { text = "_" },
                    topdelete = { text = "???" },
                    changedelete = { text = "~" },
                },
            }
        end
    }

    -- Progress UI for nvim-lsp that shows up on the bottom right corner.
    use { "j-hui/fidget.nvim",
        config = function()
            require("fidget").setup {}
        end
    }

    -- AI code support.
    -- use { "github/copilot.vim",
    --   config = function()
    --     vim.g.copilot_assume_mapped = true
    --     vim.g.copilot_no_tab_map = true
    --     vim.g.copilot_filetypes = {
    --       ["*"] = false,
    -- ["javascript"] = true,
    -- ["typescript"] = true,
    -- ["lua"] = true,
    -- ["rust"] = true,
    -- ["python"] = true,
    --     }
    --   end
    -- }

    -- Easy commenting with gc or gcc keys.
    use { "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup {}
        end
    }

    -- Detect hex and change background based on hex value.
    use { "NvChad/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup {}
        end
    }

    -- Shows buffers along the top.
    use { "akinsho/bufferline.nvim",
        tag = "v3.*",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("bufferline").setup {}
        end
    }

    -- Visual file explorer.
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("neo-tree").setup {
                filesystem = {
                    filtered_items = {
                        hide_dotfiles = false,
                        hide_hidden = true,
                    },
                },
                window = {
                    mappings = {
                        -- Disable <space> key.
                        ["<space>"] = "",
                    }
                }
            }
        end
    }

    -- Neovim statusline.
    use { "nvim-lualine/lualine.nvim",
        config = function()

            local function window()
                return vim.api.nvim_win_get_number(0)
            end

            require("lualine").setup {
                options = {
                    icons_enabled = true,
                    theme = "onedark",
                    component_separators = "|",
                    section_separators = "",
                },
                sections = {
                    lualine_a = { "mode" },
                    lualine_b = { "branch" },
                    lualine_c = { { "filename", color = { fg = "#000000", bg = "#FFB347" } } },
                    lualine_x = { "encoding", "fileformat", "filetype" },
                    lualine_y = { "progress" },
                    lualine_z = { "location", window },
                },
                inactive_sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_c = { { "filename", color = { fg = "#808080" } } },
                    lualine_x = {},
                    lualine_y = {},
                    lualine_z = { { window, color = { fg = "#808080", bg = "#121212" } } },
                },
                winbar = {
                    lualine_a = { { "mode", color = { fg = "#202020", bg = "#202020" } } },
                    lualine_b = {},
                    lualine_c = {},
                    lualine_x = {},
                    lualine_y = {},
                    lualine_z = {},
                },
                inactive_winbar = {
                    lualine_a = { { "mode", color = { fg = "#202020", bg = "#202020" } } },
                    lualine_b = {},
                    lualine_c = {},
                    lualine_x = {},
                    lualine_y = {},
                    lualine_z = {},
                }
            }
        end }

    -- Automatically set up config after closing packer.nvim.
    if packer_bootstrap then
        require("packer").sync()
    end
end)

-- Source this file and then run PackerSync on save.
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plug.lua source <afile> | PackerSync
  augroup end
]])
