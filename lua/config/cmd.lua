vim.keymap.set('n', 'nt', ':NvimTreeToggle<CR>', { noremap = true, silent = true })



-- Keybindings for Telescope
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true })  -- Find files
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>', { noremap = true, silent = true })  -- Search content in files
vim.keymap.set('n', '<leader>fb', ':Telescope buffers<CR>', { noremap = true, silent = true })    -- Switch between open buffers
vim.keymap.set('n', '<leader>fh', ':Telescope help_tags<CR>', { noremap = true, silent = true })  -- Search help tags
vim.keymap.set('n', '<leader>fc', ':Telescope commands<CR>', { noremap = true, silent = true })   -- List available commands
vim.keymap.set('n', '<leader>fd', ':Telescope diagnostics<CR>', { noremap = true, silent = true }) -- Find diagnostics

