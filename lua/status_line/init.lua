require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
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
  extensions = {}
}

require'bufferline'.setup {
  animation = false,
  auto_hide = false,

  tabpages = true,
  closable = true,

  -- Enables/disable clickable tabs
  --  - left-click: go to buffer
  --  - middle-click: delete buffer
  clickable = true,

  -- Excludes buffers from the tabline
  exclude_ft = {'javascript'},
  exclude_name = {'package.json'},

  -- Enable/disable icons
  -- if set to 'numbers', will show buffer index in the tabline
  -- if set to 'both', will show buffer index and icons in the tabline
  -- icons = { filetype = { enabled = true } };
  -- -- If set, the icon color will follow its corresponding buffer
  -- -- highlight group. By default, the Buffer*Icon group is linked to the
  -- -- Buffer* group (see Highlighting below). Otherwise, it will take its
  -- -- default value as defined by devicons.
  -- icon_custom_colors = false,

  -- -- Configure icons on the bufferline.
  -- icons.separator.left = '▎',
  -- icon_separator_inactive = '▎',
  -- icon_close_tab = '',
  -- icon_close_tab_modified = '●',
icons = {
    -- Configure the base icons on the bufferline.
    buffer_index = false,
    buffer_number = false,
    button = '',
    -- Enables / disables diagnostic symbols
    diagnostics = {
      [vim.diagnostic.severity.ERROR] = {enabled = true, icon = 'ﬀ'},
      [vim.diagnostic.severity.WARN] = {enabled = false},
      [vim.diagnostic.severity.INFO] = {enabled = false},
      [vim.diagnostic.severity.HINT] = {enabled = true},
    },
    filetype = {
      custom_colors = false,
      enabled = true,
    },
    separator = {left = '▎', right = ''},
    -- Configure the icons on the bufferline when modified or pinned.
    -- Supports all the base icon options.
    modified = {button = '●'},
    pinned = {button = '車', filename = true, separator = {right = ''}},
    -- Configure the icons on the bufferline based on the visibility of a buffer.
    -- Supports all the base icon options, plus `modified` and `pinned`.
    alternate = {filetype = {enabled = false}},
    current = {buffer_index = true},
    inactive = {button = '×'},
    visible = {modified = {buffer_number = false}},
  },



  insert_at_end = false,
  insert_at_start = false,

  maximum_padding = 1,

  maximum_length = 30,

  semantic_letters = true,

  letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',

  no_name_title = nil,
}

local nvim_tree_events = require('nvim-tree.events')
local bufferline_state = require('bufferline.api')

-- nvim_tree_events.on_tree_open(function ()
--   bufferline_state.set_offset(31, "File Tree")
-- end)

-- nvim_tree_events.on_tree_close(function ()
--   bufferline_state.set_offset(0)
-- end)

