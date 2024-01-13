local builtin = require('telescope.builtin')

local opts = { noremap = true, silent = true }

vim.keymap.set('n', 'nf', builtin.find_files, opts)
vim.keymap.set('n', 'ng', builtin.live_grep, opts)
vim.keymap.set('n', 'nb', builtin.buffers, opts)
vim.keymap.set('n', 'nh', builtin.help_tags, opts)
-- vim.keymap.set('n', 'tfc', builtin.commands, opts)
-- vim.keymap.set('n', 'tfh', builtin.commands_history, opts)
vim.keymap.set('n', 'tfk', builtin.keymaps, opts)


