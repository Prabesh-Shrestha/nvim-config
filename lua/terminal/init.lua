require'toggleterm'.setup {
        size = 13,
        open_mapping = [[so]],
        shade_filetypes = {} ,
        shade_terminals = true,
        shading_factor = '1',
        start_in_insert = true,
        persist_size = true,
        shell = vim.o.shell,
        direction = 'float',
        float_opts = {
                border = 'curved',
                winblend = 3,
        }
}

