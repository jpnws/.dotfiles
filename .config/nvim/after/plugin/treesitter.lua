require('nvim-treesitter.configs').setup {
    ensure_installed = { 'c', 'lua', 'python', 'rust', 'typescript', 'help' },

    sync_install = false,
    auto_install = true,
    ignore_install = { "javascript" },

    highlight = {
        enable = true,
        disable = {},
        additional_vim_regex_highlighting = false,
    },

    autotag = {
        enable = true
    },

    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    },

    indent = {
        enable = true,
        disable = {}
    },
}
