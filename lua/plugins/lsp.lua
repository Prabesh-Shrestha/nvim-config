-- plugins.lua (Lazy.nvim)

return {
    -- Mason and Mason LSP Config
    {
        'williamboman/mason.nvim',
        config = function()
            require("mason").setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗",
                    },
                },
            })
        end
    },
    {
        'williamboman/mason-lspconfig.nvim',
        after = 'mason.nvim',
        config = function()
        end
    },

    -- nvim-lspconfig (LSP Configuration)
    {
        'neovim/nvim-lspconfig',
        after = 'mason-lspconfig.nvim',
        config = function()
            -- This will ensure that the LSP server is set up for each one as needed.
            local lsp_flags = { debounce_text_changes = 150 }
            local capabilities = vim.lsp.protocol.make_client_capabilities()
            capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

            local servers = { "rust_analyzer","lua_ls" }

            require("mason-lspconfig").setup({
                ensure_installed = servers,
            })

            require("mason-lspconfig").setup_handlers({
                function(server_name)
                    require("lspconfig")[server_name].setup({
                        capabilities = capabilities,
                        flags = lsp_flags,
                    })
                end,
                ["lua_ls"] = function()
                    require("lspconfig").lua_ls.setup({
                        capabilities = capabilities,
                        flags = lsp_flags,
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = { "vim" },
                                },
                            },
                        },
                    })
                end,
            })
        end
    },

    -- nvim-cmp for completion
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'hrsh7th/cmp-nvim-lsp', -- LSP Source for nvim-cmp
            'L3MON4D3/LuaSnip',     -- Snippet engine for nvim-cmp
            'saadparwaiz1/cmp_luasnip', -- LuaSnip source for nvim-cmp
            'onsails/lspkind.nvim', -- Adds icons for LSP completion items
        },
        config = function()
            local luasnip = require 'luasnip'
            local cmp = require 'cmp'
            local kind_icons = {
                Text = '  ',
                Method = '  ',
                Function = '  ',
                Constructor = '  ',
                Field = '  ',
                Variable = '  ',
                Class = '  ',
                Interface = '  ',
                Module = '  ',
                Property = '  ',
                Unit = '  ',
                Value = '  ',
                Enum = '  ',
                Keyword = '  ',
                Snippet = '  ',
                Color = '  ',
                File = '  ',
                Reference = '  ',
                Folder = '  ',
                EnumMember = '  ',
                Constant = '  ',
                Struct = '  ',
                Event = '  ',
                Operator = '  ',
                TypeParameter = '  ',
            }

            local function border(hl_name)
                return {
                    { "┌", hl_name },
                    { "─", hl_name },
                    { "┐", hl_name },
                    { "│", hl_name },
                    { "┘", hl_name },
                    { "─", hl_name },
                    { "└", hl_name },
                    { "│", hl_name },
                }
            end

            cmp.setup({
                docs_initially_visible = false,
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<Tab>'] = cmp.mapping.confirm { behavior = cmp.ConfirmBehavior.Insert, select = true },
                    ['<C-k>'] = function()
                        if cmp.visible_docs() then
                            cmp.close_docs()
                        else
                            cmp.open_docs()
                        end
                    end,
                    ['<CR>'] = cmp.mapping.confirm { behavior = cmp.ConfirmBehavior.Insert, select = true },
                }),
                sources = {
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' },
                },
                window = {
                    completion = {
                        scrollbar = true,
                        max_height = 8,
                        border = border "CmpBorder",
                        winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None",
                        pumheight = 8,
                    },
                    documentation = {
                        border = border "CmpDocBorder",
                    },
                },
                view = { docs = { auto_open = false } },
                formatting = {
                    fields = { 'kind', 'abbr' },
                    format = function(entry, vim_item)
                        local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
                        local strings = vim.split(kind.kind, "%s", { trimempty = true })
                        kind.kind = "" .. kind_icons[strings[2]]
                        kind.menu = "" .. (strings[2] or "")
                        return kind
                    end,
                },
            })
        end
    },

    -- LSP Kind for Icons
    {
        'onsails/lspkind.nvim',
        config = function()
            require('lspkind').init({
                symbol_map = kind_icons,
            })
        end
    }
}

