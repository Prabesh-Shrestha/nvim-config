return {
    -- Rust Tools Plugin Setup (with additional features)
{
  'simrat39/rust-tools.nvim',
  config = function()
    -- Define custom options for rust-tools
    local opts = {
      -- Configuration for rust-analyzer (LSP server)
      server = {
        -- Rust-analyzer settings
        standalone = true,
        settings = {
          ["rust-analyzer"] = {
            cargo = { allFeatures = true },  -- Enable all cargo features
            procMacro = { enable = true },  -- Enable procedural macros
            diagnostics = {
              enable = true,  -- Enable diagnostics
            },
          },
        },
      },

      -- Additional rust-tools settings (hover, inlay hints, etc.)
      tools = {
        -- Automatically set hints (when moving around in the file)
        autoSetHints = true,

        -- Specify how to execute rust code (terminal-based execution)
        executor = require("rust-tools/executors").termopen,

        -- On initialization, you can set custom actions here (currently nil)
        on_initialized = nil,

        -- Configuration for inlay hints (parameter hints, type hints, etc.)
        inlay_hints = {
          only_current_line = false,
          only_current_line_autocmd = "CursorHold",  -- Show hints on cursor hold
          show_parameter_hints = true,
          show_variable_name = false,
          parameter_hints_prefix = "<- ",  -- Prefix for parameter hints
          other_hints_prefix = "=> ",  -- Prefix for other hints
          max_len_align = false,  -- Disable max length alignment
          max_len_align_padding = 1,  -- Padding for alignment
          right_align = false,  -- Disable right-alignment
          right_align_padding = 7,  -- Padding for right-alignment
          highlight = "Comment",  -- Highlight style for inlay hints
        },

        -- Hover actions settings (hover popups for function signatures, etc.)
        hover_actions = {
          border = {
            { "┌", "FloatBorder" },
            { "─", "FloatBorder" },
            { "┐", "FloatBorder" },
            { "│", "FloatBorder" },
            { "┘", "FloatBorder" },
            { "─", "FloatBorder" },
            { "└", "FloatBorder" },
            { "│", "FloatBorder" },
          },

          auto_focus = false,  -- Do not automatically focus on hover actions
        },

        -- Crate Graph Configuration
        crate_graph = {
          backend = "x11",  -- Backend for generating crate graphs
          output = nil,  -- Default output directory (use nil for default behavior)
          full = true,  -- Generate the full crate graph
          enabled_graphviz_backends = {
            "bmp", "cgimage", "canon", "dot", "gv", "xdot", "xdot1.2", "xdot1.4", "eps",
            "exr", "fig", "gd", "gd2", "gif", "gtk", "ico", "cmap", "ismap", "imap", "cmapx",
            "imap_np", "cmapx_np", "jpg", "jpeg", "jpe", "jp2", "json", "json0", "dot_json", 
            "xdot_json", "pdf", "pic", "pct", "pict", "plain", "plain-ext", "png", "pov", 
            "ps", "ps2", "psd", "sgi", "svg", "svgz", "tga", "tiff", "tif", "tk", "vml", 
            "vmlz", "wbmp", "webp", "xlib", "x11",
          },
        },
      },
    }

    -- Setup rust-tools with the customized options
    require('rust-tools').setup(opts)

    -- Optional: Key mappings for rust-tools actions (you can customize these)
    local key_opts = { noremap = true, silent = true }
    
    -- Trigger code action (quick fixes, refactoring)
    vim.keymap.set('n', '<leader>ca', '<cmd>RustCodeAction<CR>', key_opts)

    -- Trigger hover action (hover over functions/variables for documentation)
    vim.keymap.set('n', '<leader>rh', '<cmd>RustHoverActions<CR>', key_opts)

    -- Trigger runnable actions (e.g., run tests or binaries directly)
    vim.keymap.set('n', '<leader>rm', '<cmd>RustRunnables<CR>', key_opts)
  end
}

}
