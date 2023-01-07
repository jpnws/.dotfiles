require('telescope').setup {}

pcall(require('telescope').load_extension, 'fzf')
