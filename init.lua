-- core
require("settings")


require("plugins")
require("maps")
require("status_line")
require("terminal")
require("file_explorer")
require("tree_sitter")

require("git")
require("telescope")


-- color schemes
-- require("colorizer")
require("themes.tokyonight")
-- require("themes.catppuccin")
-- require("themes.github")

-- language server
require("lang_server.server")
require("lang_server.nvim-cmp")

-- languages
require("lang.rust")
