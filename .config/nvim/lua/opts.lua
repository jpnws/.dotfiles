-- LSP debugging purpose logging level. Stores logs on disk.
-- vim.lsp.set_log_level("debug")

-- Show line numbers on the left side.
vim.opt.nu = true

-- Show lines relative to current cursor position.
vim.opt.relativenumber = true

-- When starting a new line indent based on previous line.
-- vim.opt.autoindent = true

-- When starting a new line indent automatically based on context.
vim.opt.smartindent = true

-- Columns of whitespace of a level of indentation.
vim.opt.shiftwidth = 4

-- Columns of whitespace of a tab character.
vim.opt.tabstop = 4

-- Columns of whitespace of a tab keypress or backspace.
vim.opt.softtabstop = 4

-- Disable tab character and tab keypresses will be spaces.
vim.opt.expandtab = true

-- Set text wrapping.
vim.opt.wrap = true

-- Swapfile used for recovery.
vim.opt.swapfile = false

-- Write backup files for the buffer.
vim.opt.backup = false

-- Specify the undo directory.
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- Specify whether to write undo files.
vim.opt.undofile = true

-- Highlight the searched characters.
vim.opt.hlsearch = false

-- Show the matching characters as being typed.
vim.opt.incsearch = true

-- Enable 24-bit RGB colors in the TUI.
vim.opt.termguicolors = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 8

-- Specifies when and how to draw the signcolumn. Sign column is the column next to line number column.
vim.opt.signcolumn = "yes"

-- Filename can include @.
vim.opt.isfname:append("@-@")

-- Cursor position line and column highlighting.
vim.opt.cursorline = true
vim.opt.cursorcolumn = false

-- Open vim splits in a more natural direction.
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Time in milliseconds to wait for a mapped sequence to complete.
vim.opt.timeoutlen = 0

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = "a"

-- Enable break indent
vim.o.breakindent = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Set colorscheme
vim.cmd [[colorscheme onedark]]

-- Set completeopt to have a better completion experience
vim.opt.completeopt = { "menuone", "noselect", "noinsert" }
vim.opt.shortmess = vim.opt.shortmess + { c = true }
vim.api.nvim_set_option("updatetime", 300)

-- Highlight on yank.
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = "*",
})
