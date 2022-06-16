local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd 


augroup('RestoreCursorShapeOnExit', {clear = true})

autocmd('VimLeave', {
  group = 'RestoreCursorShapeOnExit',
  command = 'set guicursor=a:ver20' 
})

