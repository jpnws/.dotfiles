vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable arrow keys.
vim.keymap.set({ "v", "n", "i" }, "<up>", "<nop>", { desc = "Up", noremap = true })
vim.keymap.set({ "v", "n", "i" }, "<down>", "<nop>", { desc = "Down", noremap = true })
vim.keymap.set({ "v", "n", "i" }, "<left>", "<nop>", { desc = "Left", noremap = true })
vim.keymap.set({ "v", "n", "i" }, "<right>", "<nop>", { desc = "Right", noremap = true })

-- Toggle search term highlight.
vim.keymap.set({ "n", "v" }, "<leader>h", ":set hlsearch!<cr>", { desc = "Toggle Search Term Highlight", noremap = true })

-- Save only if there were any changes.
vim.keymap.set("n", "<leader>w", ":up<cr>", { desc = "Save if Changed", noremap = true })

-- Move the entire highlighted lines up or down.
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move Code Block Up", noremap = true })
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move Code Block Down", noremap = true })

-- Take line below the cursor and append it to current line while leaving the cursor alone in the same place.
-- The default behavior is the cursor moves to the end of line.
vim.keymap.set("n", "J", "mzJ`z", { desc = "Append Below Line to Current Line", noremap = true })

-- Allow half-page jumping up or down while leaving the cursor in the middle.
vim.keymap.set("n", "<c-d>", "<c-d>zz", { desc = "Jump Down (Middle)", noremap = true })
vim.keymap.set("n", "<c-u>", "<c-u>zz", { desc = "Jump Up (Middle)", noremap = true })

-- Allow a search term and cursor to stay in the middle of the buffer.
vim.keymap.set("n", "n", "nzzzv", { desc = "Forward Search (Middle)", noremap = true })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Reverse Search (Middle)", noremap = true })

-- Don't do anything when capital Q is pressed.
vim.keymap.set("n", "Q", "<nop>", { desc = "Do Nothing", noremap = true })

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Move Cursor Up", expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Move Cursor Down", expr = true, silent = true })

-- Navigate between buffer tabs and close them.
vim.keymap.set("n", "<leader><tab>", ":bnext<cr>", { desc = "Go to Next Buffer", noremap = true })
vim.keymap.set("n", "<leader><s-tab>", ":bprev<cr>", { desc = "Go to Previous Buffer", noremap = true })
vim.keymap.set("n", "<leader>z", ":bdelete<cr>:bprev<cr>", { desc = "Close Current Buffer", noremap = true })

-- Format the current buffer.
vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end, { desc = "Format Current Buffer", noremap = true })

-- Jump to a window by its number.
vim.keymap.set("n", "<leader>1", "1<c-w>w", { desc = "Move to Window 1", noremap = true })
vim.keymap.set("n", "<leader>2", "2<c-w>w", { desc = "Move to Window 2", noremap = true })
vim.keymap.set("n", "<leader>3", "3<c-w>w", { desc = "Move to Window 3", noremap = true })
vim.keymap.set("n", "<leader>4", "4<c-w>w", { desc = "Move to Window 4", noremap = true })
vim.keymap.set("n", "<leader>5", "5<c-w>w", { desc = "Move to Window 5", noremap = true })
vim.keymap.set("n", "<leader>6", "6<c-w>w", { desc = "Move to Window 6", noremap = true })

-- Yank text to the system clipboard.
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Copy to System Clipboard", noremap = true })

-- Yank entire line to the system clipboard.
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Copy Line to System Clipboard", noremap = true })

-- Paste text from the system clipboard.
vim.keymap.set("n", "<leader>p", '"+p', { desc = "Paste from System Clipboard", noremap = true })

-- Paste the last thing yanked, not deleted.
vim.api.nvim_set_keymap("n", "<leader>o", '"0p', { desc = "Paste Last Thing Yanked", noremap = true })
vim.api.nvim_set_keymap("n", "<leader>O", '"0P', { desc = "Paste Last Thing Yanked", noremap = true })

-- Replace a word that the cursor is on.
vim.keymap.set("n", "<leader>r", ":%s/\\<<c-r><c-w>\\>/<c-r><c-w>/gI<left><left><left>", { desc = "Replace Word Under Cursor Global", noremap = true })

-- Make current file executable.
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<cr>", { desc = "Make Current File Executable", noremap = true, silent = true })

-- Search
vim.keymap.set("n", "<leader>sr", require("telescope.builtin").oldfiles, { desc = "[S]earch [R]ecently Opened Files", noremap = true })
vim.keymap.set("n", "<leader>se", require("telescope.builtin").buffers, { desc = "[S]earch [E]xisting Buffers", noremap = true })
vim.keymap.set("n", "<leader>sf", require("telescope.builtin").find_files, { desc = "[S]earch [F]iles", noremap = true })
vim.keymap.set("n", "<leader>sh", require("telescope.builtin").help_tags, { desc = "[S]earch [H]elp", noremap = true })
vim.keymap.set("n", "<leader>sw", require("telescope.builtin").grep_string, { desc = "[S]earch Current [W]ord", noremap = true })
vim.keymap.set("n", "<leader>sg", require("telescope.builtin").live_grep, { desc = "[S]earch by [G]rep", noremap = true })
vim.keymap.set("n", "<leader>sd", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics", noremap = true })
vim.keymap.set("n", "<leader>sc", function()
  require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = "[S]earch [C]urrent Buffer", noremap = true })

-- Diagnostics
vim.keymap.set("n", "<leader>d[", vim.diagnostic.goto_prev, { desc = "Goto Previous Diagnostic Message", noremap = true })
vim.keymap.set("n", "<leader>d]", vim.diagnostic.goto_next, { desc = "Goto Next Diagnostic Message", noremap = true })
vim.keymap.set("n", "<leader>de", vim.diagnostic.open_float, { desc = "Open Diagnostic Message", noremap = true })
vim.keymap.set("n", "<leader>dq", vim.diagnostic.setloclist, { desc = "Diagnostic Setloclist", noremap = true })

-- Goto
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "[G]oto [D]efinition", noremap = true })
vim.keymap.set("n", "<leader>gr", require("telescope.builtin").lsp_references, { desc = "[G]oto [R]eferences", noremap = true })
vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { desc = "[G]oto [I]mplementation", noremap = true })
vim.keymap.set("n", "<leader>gt", vim.lsp.buf.type_definition, { desc = "[G]oto [T]ype Definition", noremap = true })

-- LSP
vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { desc = "[L]SP [R]ename", noremap = true })
vim.keymap.set("n", "<leader>lc", vim.lsp.buf.code_action, { desc = "[L]SP [C]ode Action", noremap = true })

-- Toggle undotree
vim.keymap.set("n", "<leader>u", ":UndotreeToggle<cr>", { desc = "Toggle Undotree", noremap = true })

-- LSP saga keymaps.
vim.keymap.set("n", "<leader>ld", "<cmd>Lspsaga diagnostic_jump_next<cr>", { desc = "[L]SP Saga [D]iagnostic Jump Next", noremap = true })
vim.keymap.set("n", "<leader>lk", "<cmd>Lspsaga hover_doc<cr>", { desc = "[L]SP Saga Hover Doc [K]", noremap = true })
vim.keymap.set("n", "<leader>lf", "<cmd>Lspsaga lsp_finder<cr>", { desc = "[L]SP Saga LSP [F]inder", noremap = true })
vim.keymap.set("n", "<leader>lh", "<cmd>Lspsaga signature_help<cr>", { desc = "[L]SP Saga Signature [H]elp", noremap = true })
vim.keymap.set("n", "<leader>lp", "<cmd>Lspsaga preview_definition<cr>", { desc = "[L]SP Saga [P]review Definition", noremap = true })
vim.keymap.set("n", "<leader>lr", "<cmd>Lspsaga rename<cr>", { desc = "[L]SP Saga [R]ename", noremap = true })

-- LSP Lines
vim.keymap.set("n", "<leader>ll", require("lsp_lines").toggle, { desc = "[L]SP Toggle LSP [L]ines", noremap = true })

-- Neotree
vim.keymap.set("n", "<leader>t", ":Neotree toggle=true<cr>", { desc = "Toggle Neotree", noremap = true, silent = true })
