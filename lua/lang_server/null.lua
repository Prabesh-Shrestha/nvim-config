require("null-ls").setup({
    sources = {
        require("null-ls").builtins.formatting.stylua,
        require("null-ls").builtins.formatting.black,
        require("null-ls").builtins.formatting.rustfmt,
        require("null-ls").builtins.formatting.prettier,
    },
})



