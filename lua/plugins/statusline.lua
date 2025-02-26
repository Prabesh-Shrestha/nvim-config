return {
    {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true },  -- Optional but adds icons
  config = function()
    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'catppuccin',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {},
        always_divide_middle = true,
        globalstatus = true,
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {},
      extensions = {'nvim-tree', 'toggleterm', 'mason'}
    }
  end,
},

-- {
--   'akinsho/bufferline.nvim',
--   requires = 'kyazdani42/nvim-web-devicons',  -- Optional, but adds icons
--   config = function()
--     require'bufferline'.setup {
--       animation = false,
--       auto_hide = false,
--       tabpages = true,
--       closable = true,
--       exclude_ft = {'javascript'},
--       exclude_name = {'package.json'},
--       icons = {
--         buffer_index = false,
--         buffer_number = false,
--         button = '',
--         diagnostics = {
--           [vim.diagnostic.severity.ERROR] = {enabled = true, icon = 'ﬀ'},
--           [vim.diagnostic.severity.WARN] = {enabled = false},
--           [vim.diagnostic.severity.INFO] = {enabled = false},
--           [vim.diagnostic.severity.HINT] = {enabled = true},
--         },
--         filetype = { custom_colors = false, enabled = true },
--         separator = { left = '▎', right = '' },
--         modified = {button = '●'},
--         pinned = {button = '車', filename = true, separator = {right = ''}},
--         alternate = {filetype = {enabled = false}},
--         current = {buffer_index = true},
--         inactive = {button = '×'},
--         visible = {modified = {buffer_number = false}},
--       },
--       insert_at_end = false,
--       insert_at_start = false,
--       maximum_padding = 1,
--       maximum_length = 30,
--       semantic_letters = true,
--       letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',
--       no_name_title = nil,
--     }
--   end
-- }
}

