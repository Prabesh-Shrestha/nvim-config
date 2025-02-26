return {{
  'nvim-tree/nvim-tree.lua',
  requires = 'nvim-tree/nvim-web-devicons', -- for file icons
  config = function()
      vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

require("nvim-tree").setup({
    sort_by = "case_sensitive",
    hijack_cursor = true,
    view = {
        side = 'right',
        cursorline = true,
        width = 30
    },
    git = {
        enable = false,
        ignore = true,
    },
    actions = {
        open_file = {
            quit_on_open = true,
        },
    },

    renderer = {
        group_empty = true,
        indent_markers = {
            enable = true,
        },
        icons = {
            webdev_colors=true,
            git_placement = "signcolumn",
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
        },
    },
})

  end
}, 
{
  'kyazdani42/nvim-web-devicons',
  config = function()
    require('nvim-web-devicons').setup()
  end,
}
}
