return {
  'nvim-telescope/telescope.nvim',
  requires = { 'nvim-lua/plenary.nvim' },  -- This is a required dependency
  config = function()
    require('telescope').setup({
      defaults = {
        mappings = {
          i = {
            -- Map <C-x> to select vertical split
            ["<C-x>"] = require("telescope.actions").select_vertical,
            -- Map <C-v> to select horizontal split
            ["<C-v>"] = require("telescope.actions").select_horizontal,
          },
        },
      },
    })
  end,
}

