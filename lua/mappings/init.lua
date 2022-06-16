local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

vim.g.mapleader = ' '

map('n', 'nb', ':NvimTreeToggle<CR>', opts)
map('n', 'nt', ':NvimTreeOpen<CR>', opts)
map('n', 'ff', ':Telescope find_files<CR>', opts)
map('n', 'fg', ':Telescope live_grep<CR>', opts)
map('n', 'tfc', ':Telescope commands<CR>', opts)
map('n', 'tfh', ':Telescope command_history<CR>', opts)
map('n', 'tfk', ':Telescope keymaps<CR>', opts)

-- sys setting 
map('v', '<C-c>', '"+y', opts)
map('v', '<C-v>', '"+p', opts)



-- barbar
map('n', '<A-,>', ':BufferPrevious<CR>', opts)
map('n', '<A-.>', ':BufferNext<CR>', opts)
map('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
map('n', '<A->>', ' :BufferMoveNext<CR>', opts)
map('n', '<A-1>', ':BufferGoto 1<CR>', opts)
map('n', '<A-2>', ':BufferGoto 2<CR>', opts)
map('n', '<A-3>', ':BufferGoto 3<CR>', opts)
map('n', '<A-4>', ':BufferGoto 4<CR>', opts)
map('n', '<A-5>', ':BufferGoto 5<CR>', opts)
map('n', '<A-6>', ':BufferGoto 6<CR>', opts)
map('n', '<A-7>', ':BufferGoto 7<CR>', opts)
map('n', '<A-8>', ':BufferGoto 8<CR>', opts)
map('n', '<A-9>', ':BufferGoto 9<CR>', opts)
map('n', '<A-0>', ':BufferLast<CR>', opts)
map('n', '<A-c>', ':BufferClose<CR>', opts)
--                 -- Other:
--                 -- :BarbarEnable - enables barbar (enabled by default)
--                 -- :BarbarDisable - very bad command, should never be used
-- Magic buffer-picking mode
map('n', '<C-p>', ':BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', ':BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', ':BufferOrderByLanguage<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
