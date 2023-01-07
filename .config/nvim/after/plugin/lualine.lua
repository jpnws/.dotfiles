local function window()
    return vim.api.nvim_win_get_number(0)
end

require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'onedark',
        component_separators = '|',
        section_separators = '',
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch' },
        lualine_c = { { 'filename', color = { fg = '#000000', bg = '#FFB347' } } },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location', window },
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { { 'filename', color = { fg = '#808080' } } },
        lualine_x = {},
        lualine_y = {},
        lualine_z = { { window, color = { fg = '#808080', bg = '#121212' } } },
    },
    winbar = {
        lualine_a = { { 'mode', color = { fg = '#202020', bg = '#202020' } } },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
    },
    inactive_winbar = {
        lualine_a = { { 'mode', color = { fg = '#202020', bg = '#202020' } } },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
    }
}
