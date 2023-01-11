-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/uname/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/uname/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/uname/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/uname/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/uname/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["fidget.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vfidget\frequire\0" },
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nÓ\1\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\1\ttext\6~\14topdelete\1\0\1\ttext\bâ€¾\vdelete\1\0\1\ttext\6_\vchange\1\0\1\ttext\6~\badd\1\0\0\1\0\1\ttext\6+\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["indent-guides.nvim"] = {
    config = { "\27LJ\2\nô\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\22exclude_filetypes\1\6\0\0\thelp\14dashboard\rNvimTree\vpacker\fNeotree\15odd_colors\1\0\2\afg\f#0f0f0f\abg\f#0f0f0f\16even_colors\1\0\2\afg\f#1b1b1b\abg\f#1b1b1b\1\0\1\22indent_guide_size\3\4\nsetup\18indent_guides\frequire\0" },
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/indent-guides.nvim",
    url = "https://github.com/glepnir/indent-guides.nvim"
  },
  ["lsp-zero.nvim"] = {
    config = { "\27LJ\2\nÆ\5\0\0\t\0,\0C6\0\0\0'\2\1\0B\0\2\0029\1\2\0'\3\3\0B\1\2\0019\1\4\0005\3\5\0B\1\2\0019\1\6\0'\3\a\0005\4\15\0005\5\r\0005\6\v\0005\a\t\0005\b\b\0=\b\n\a=\a\f\6=\6\14\5=\5\16\4B\1\3\0016\1\0\0'\3\17\0B\1\2\0025\2\20\0009\3\18\0019\3\19\3=\3\21\0029\3\22\0009\3\23\0035\5\26\0009\6\24\0019\6\25\6\18\b\2\0B\6\2\2=\6\27\0059\6\24\0019\6\28\6\18\b\2\0B\6\2\2=\6\29\0059\6\24\0019\6\30\0065\b\31\0B\6\2\2=\6 \0059\6\24\0019\6!\6B\6\1\2=\6\"\5B\3\2\2+\4\0\0=\4#\3+\4\0\0=\4$\0039\4%\0005\6&\0=\3\24\6B\4\2\0019\4'\0005\6)\0005\a(\0=\a*\6B\4\2\0019\4+\0B\4\1\1K\0\1\0\nsetup\15sign_icons\1\0\0\1\0\4\twarn\6W\thint\6H\tinfo\6I\nerror\6E\20set_preferences\1\0\0\19setup_nvim_cmp\f<S-Tab>\n<Tab>\14<C-Space>\rcomplete\n<C-y>\1\0\1\vselect\2\fconfirm\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\17cmp_mappings\rdefaults\rbehavior\1\0\0\vSelect\19SelectBehavior\bcmp\rsettings\1\0\0\bLua\1\0\0\16diagnostics\1\0\0\fglobals\1\0\0\1\2\0\0\bvim\16sumneko_lua\14configure\1\5\0\0\rtsserver\veslint\16sumneko_lua\18rust_analyzer\21ensure_installed\16recommended\vpreset\rlsp-zero\frequire\0" },
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0056\0\0\0009\0\1\0009\0\2\0)\2\0\0D\0\2\0\24nvim_win_get_number\bapi\bvimÄ\6\1\0\b\0%\0X3\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\5\0005\4\4\0=\4\6\0035\4\b\0005\5\a\0=\5\t\0045\5\n\0=\5\v\0044\5\3\0005\6\f\0005\a\r\0=\a\14\6>\6\1\5=\5\15\0045\5\16\0=\5\17\0045\5\18\0=\5\19\0045\5\20\0>\0\2\5=\5\21\4=\4\22\0035\4\23\0004\5\0\0=\5\t\0044\5\0\0=\5\v\0044\5\3\0005\6\24\0005\a\25\0=\a\14\6>\6\1\5=\5\15\0044\5\0\0=\5\17\0044\5\0\0=\5\19\0044\5\3\0005\6\27\0>\0\1\0065\a\26\0=\a\14\6>\6\1\5=\5\21\4=\4\28\0035\4\31\0004\5\3\0005\6\29\0005\a\30\0=\a\14\6>\6\1\5=\5\t\0044\5\0\0=\5\v\0044\5\0\0=\5\15\0044\5\0\0=\5\17\0044\5\0\0=\5\19\0044\5\0\0=\5\21\4=\4 \0035\4#\0004\5\3\0005\6!\0005\a\"\0=\a\14\6>\6\1\5=\5\t\0044\5\0\0=\5\v\0044\5\0\0=\5\15\0044\5\0\0=\5\17\0044\5\0\0=\5\19\0044\5\0\0=\5\21\4=\4$\3B\1\2\1K\0\1\0\20inactive_winbar\1\0\0\1\0\2\afg\f#202020\abg\f#202020\1\2\0\0\tmode\vwinbar\1\0\0\1\0\2\afg\f#202020\abg\f#202020\1\2\0\0\tmode\22inactive_sections\1\0\0\1\0\2\afg\f#808080\abg\f#121212\1\0\1\afg\f#808080\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\ncolor\1\0\2\afg\f#000000\abg\f#FFB347\1\2\0\0\rfilename\14lualine_b\1\2\0\0\vbranch\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\1\0\4\25component_separators\6|\ntheme\fonedark\18icons_enabled\2\23section_separators\5\nsetup\flualine\frequire\0\0" },
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\n¸\1\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\vwindow\rmappings\1\0\0\1\0\1\f<space>\5\15filesystem\1\0\0\19filtered_items\1\0\0\1\0\2\16hide_hidden\2\18hide_dotfiles\1\nsetup\rneo-tree\frequire\0" },
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\n¨\1\0\0\6\0\n\0\0216\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\b\0004\4\4\0009\5\3\0009\5\4\0059\5\5\5>\5\1\0049\5\3\0009\5\4\0059\5\6\5>\5\2\0049\5\3\0009\5\4\0059\5\a\5>\5\3\4=\4\t\3B\1\2\1K\0\1\0\fsources\1\0\0\frustfmt\veslint\rprettier\15formatting\rbuiltins\nsetup\fnull-ls\frequire\0" },
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/NvChad/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-treesitter-textobjects" },
    config = { "\27LJ\2\nÞ\2\0\0\5\0\15\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0004\4\0\0=\4\v\3=\3\f\0025\3\r\0=\3\14\2B\0\2\1K\0\1\0\frainbow\1\0\2\18extended_mode\2\venable\2\vindent\fdisable\1\0\1\venable\2\fautotag\1\0\1\venable\2\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\2\17auto_install\2\17sync_install\1\1\b\0\0\blua\trust\15typescript\vpython\thelp\ttoml\tyaml\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/uname/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    config = { "\27LJ\2\n¿\1\0\0\4\0\a\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\6\0B\0\1\1K\0\1\0\tload\vcolors\1\0\6\nblack\f#000000\bbg3\f#323641\tbg_d\f#000000\bbg1\f#0F0F0F\bbg0\f#000000\bbg2\f#000000\1\0\1\nstyle\vdarker\nsetup\fonedark\frequire\0" },
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["spaceless.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14spaceless\frequire\0" },
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/spaceless.nvim",
    url = "https://github.com/lewis6991/spaceless.nvim"
  },
  tabular = {
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/tabular",
    url = "https://github.com/godlygeek/tabular"
  },
  ["telescope-fzf-native.nvim"] = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/opt/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["template-string.nvim"] = {
    config = { "\27LJ\2\nA\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\20template-string\frequire\0" },
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/template-string.nvim",
    url = "https://github.com/axelvc/template-string.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-rel-jump"] = {
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/vim-rel-jump",
    url = "https://github.com/buztard/vim-rel-jump"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/vim-rhubarb",
    url = "https://github.com/tpope/vim-rhubarb"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/vim-sleuth",
    url = "https://github.com/tpope/vim-sleuth"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["wildfire.vim"] = {
    loaded = true,
    path = "/home/uname/.local/share/nvim/site/pack/packer/start/wildfire.vim",
    url = "https://github.com/gcmt/wildfire.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0056\0\0\0009\0\1\0009\0\2\0)\2\0\0D\0\2\0\24nvim_win_get_number\bapi\bvimÄ\6\1\0\b\0%\0X3\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\5\0005\4\4\0=\4\6\0035\4\b\0005\5\a\0=\5\t\0045\5\n\0=\5\v\0044\5\3\0005\6\f\0005\a\r\0=\a\14\6>\6\1\5=\5\15\0045\5\16\0=\5\17\0045\5\18\0=\5\19\0045\5\20\0>\0\2\5=\5\21\4=\4\22\0035\4\23\0004\5\0\0=\5\t\0044\5\0\0=\5\v\0044\5\3\0005\6\24\0005\a\25\0=\a\14\6>\6\1\5=\5\15\0044\5\0\0=\5\17\0044\5\0\0=\5\19\0044\5\3\0005\6\27\0>\0\1\0065\a\26\0=\a\14\6>\6\1\5=\5\21\4=\4\28\0035\4\31\0004\5\3\0005\6\29\0005\a\30\0=\a\14\6>\6\1\5=\5\t\0044\5\0\0=\5\v\0044\5\0\0=\5\15\0044\5\0\0=\5\17\0044\5\0\0=\5\19\0044\5\0\0=\5\21\4=\4 \0035\4#\0004\5\3\0005\6!\0005\a\"\0=\a\14\6>\6\1\5=\5\t\0044\5\0\0=\5\v\0044\5\0\0=\5\15\0044\5\0\0=\5\17\0044\5\0\0=\5\19\0044\5\0\0=\5\21\4=\4$\3B\1\2\1K\0\1\0\20inactive_winbar\1\0\0\1\0\2\afg\f#202020\abg\f#202020\1\2\0\0\tmode\vwinbar\1\0\0\1\0\2\afg\f#202020\abg\f#202020\1\2\0\0\tmode\22inactive_sections\1\0\0\1\0\2\afg\f#808080\abg\f#121212\1\0\1\afg\f#808080\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\ncolor\1\0\2\afg\f#000000\abg\f#FFB347\1\2\0\0\rfilename\14lualine_b\1\2\0\0\vbranch\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\1\0\4\25component_separators\6|\ntheme\fonedark\18icons_enabled\2\23section_separators\5\nsetup\flualine\frequire\0\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nÞ\2\0\0\5\0\15\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0004\4\0\0=\4\v\3=\3\f\0025\3\r\0=\3\14\2B\0\2\1K\0\1\0\frainbow\1\0\2\18extended_mode\2\venable\2\vindent\fdisable\1\0\1\venable\2\fautotag\1\0\1\venable\2\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\2\17auto_install\2\17sync_install\1\1\b\0\0\blua\trust\15typescript\vpython\thelp\ttoml\tyaml\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: fidget.nvim
time([[Config for fidget.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vfidget\frequire\0", "config", "fidget.nvim")
time([[Config for fidget.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\n¨\1\0\0\6\0\n\0\0216\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\b\0004\4\4\0009\5\3\0009\5\4\0059\5\5\5>\5\1\0049\5\3\0009\5\4\0059\5\6\5>\5\2\0049\5\3\0009\5\4\0059\5\a\5>\5\3\4=\4\t\3B\1\2\1K\0\1\0\fsources\1\0\0\frustfmt\veslint\rprettier\15formatting\rbuiltins\nsetup\fnull-ls\frequire\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nÓ\1\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\0\17changedelete\1\0\1\ttext\6~\14topdelete\1\0\1\ttext\bâ€¾\vdelete\1\0\1\ttext\6_\vchange\1\0\1\ttext\6~\badd\1\0\0\1\0\1\ttext\6+\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: template-string.nvim
time([[Config for template-string.nvim]], true)
try_loadstring("\27LJ\2\nA\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\20template-string\frequire\0", "config", "template-string.nvim")
time([[Config for template-string.nvim]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\n¸\1\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\vwindow\rmappings\1\0\0\1\0\1\f<space>\5\15filesystem\1\0\0\19filtered_items\1\0\0\1\0\2\16hide_hidden\2\18hide_dotfiles\1\nsetup\rneo-tree\frequire\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: spaceless.nvim
time([[Config for spaceless.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14spaceless\frequire\0", "config", "spaceless.nvim")
time([[Config for spaceless.nvim]], false)
-- Config for: indent-guides.nvim
time([[Config for indent-guides.nvim]], true)
try_loadstring("\27LJ\2\nô\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\22exclude_filetypes\1\6\0\0\thelp\14dashboard\rNvimTree\vpacker\fNeotree\15odd_colors\1\0\2\afg\f#0f0f0f\abg\f#0f0f0f\16even_colors\1\0\2\afg\f#1b1b1b\abg\f#1b1b1b\1\0\1\22indent_guide_size\3\4\nsetup\18indent_guides\frequire\0", "config", "indent-guides.nvim")
time([[Config for indent-guides.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: lsp-zero.nvim
time([[Config for lsp-zero.nvim]], true)
try_loadstring("\27LJ\2\nÆ\5\0\0\t\0,\0C6\0\0\0'\2\1\0B\0\2\0029\1\2\0'\3\3\0B\1\2\0019\1\4\0005\3\5\0B\1\2\0019\1\6\0'\3\a\0005\4\15\0005\5\r\0005\6\v\0005\a\t\0005\b\b\0=\b\n\a=\a\f\6=\6\14\5=\5\16\4B\1\3\0016\1\0\0'\3\17\0B\1\2\0025\2\20\0009\3\18\0019\3\19\3=\3\21\0029\3\22\0009\3\23\0035\5\26\0009\6\24\0019\6\25\6\18\b\2\0B\6\2\2=\6\27\0059\6\24\0019\6\28\6\18\b\2\0B\6\2\2=\6\29\0059\6\24\0019\6\30\0065\b\31\0B\6\2\2=\6 \0059\6\24\0019\6!\6B\6\1\2=\6\"\5B\3\2\2+\4\0\0=\4#\3+\4\0\0=\4$\0039\4%\0005\6&\0=\3\24\6B\4\2\0019\4'\0005\6)\0005\a(\0=\a*\6B\4\2\0019\4+\0B\4\1\1K\0\1\0\nsetup\15sign_icons\1\0\0\1\0\4\twarn\6W\thint\6H\tinfo\6I\nerror\6E\20set_preferences\1\0\0\19setup_nvim_cmp\f<S-Tab>\n<Tab>\14<C-Space>\rcomplete\n<C-y>\1\0\1\vselect\2\fconfirm\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\17cmp_mappings\rdefaults\rbehavior\1\0\0\vSelect\19SelectBehavior\bcmp\rsettings\1\0\0\bLua\1\0\0\16diagnostics\1\0\0\fglobals\1\0\0\1\2\0\0\bvim\16sumneko_lua\14configure\1\5\0\0\rtsserver\veslint\16sumneko_lua\18rust_analyzer\21ensure_installed\16recommended\vpreset\rlsp-zero\frequire\0", "config", "lsp-zero.nvim")
time([[Config for lsp-zero.nvim]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
try_loadstring("\27LJ\2\n¿\1\0\0\4\0\a\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\6\0B\0\1\1K\0\1\0\tload\vcolors\1\0\6\nblack\f#000000\bbg3\f#323641\tbg_d\f#000000\bbg1\f#0F0F0F\bbg0\f#000000\bbg2\f#000000\1\0\1\nstyle\vdarker\nsetup\fonedark\frequire\0", "config", "onedark.nvim")
time([[Config for onedark.nvim]], false)
-- Conditional loads
time([[Conditional loading of telescope-fzf-native.nvim]], true)
  require("packer.load")({"telescope-fzf-native.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of telescope-fzf-native.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-treesitter-textobjects ]]
time([[Sequenced loading]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
