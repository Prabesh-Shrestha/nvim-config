
require'nvim-treesitter.configs'.setup {
        -- A list of parser names, or "all"
        ensure_installed = { 
                "c", 
                "lua", 
                "rust" ,
                "typescript",
                "python",
                "javascript"
        },
        sync_install = false,
        ignore_install = { "javascript" },
        highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
        },
        rainbow = {

            enable = true,
            extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
            colors = {
                "#a89984",
                "#b16286",
                "#d79921",
                "#689d6a",
                "#d65d0e",
                "#458588",
            },
        }
}

