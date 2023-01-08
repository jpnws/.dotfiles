local null_ls = require("null-ls")

null_ls.setup {
    sources = {
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.eslint,
        -- null_ls.builtins.formatting.spell,
    }
}
