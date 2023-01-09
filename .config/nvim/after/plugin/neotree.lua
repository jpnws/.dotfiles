require("neo-tree").setup {
    filesystem = {
        filtered_items ={
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
