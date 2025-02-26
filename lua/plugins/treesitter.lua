return {
{
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate',  -- Ensure parsers are installed after plugin installation
  config = function()
    -- nvim-treesitter setup
    require'nvim-treesitter.configs'.setup {
      ensure_installed = { "c", "cpp", "lua", "python", "javascript", "typescript", "html", "css", "go", "rust", "bash" },  -- List of languages to install parsers for
      sync_install = false,  -- Install parsers asynchronously
      highlight = {
        enable = true,  -- Enable tree-sitter based highlighting
        additional_vim_regex_highlighting = false,  -- Disable fallback regex-based highlighting
      },
      indent = {
        enable = true,  -- Enable tree-sitter-based indentation
      },
      autotag = {
        enable = true,  -- Enable auto-closing and renaming of HTML/XML tags
      },
    }
  end
}

-- Additional configuration to enable treesitter for specific filetypes and features.

}
