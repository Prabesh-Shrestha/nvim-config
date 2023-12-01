return require("packer").startup(
    function(use)
        use("wbthomason/packer.nvim")
        use({ "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/plenary.nvim" } } })
        use {
            'nvim-tree/nvim-tree.lua',
            requires = {
                'nvim-tree/nvim-web-devicons', -- optional
            },
        }
        use { 'romgrk/barbar.nvim', requires = 'nvim-web-devicons' }

        use {
            'nvim-treesitter/nvim-treesitter',
            run = function()
                local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
                ts_update()
            end,
        }
        use("mrjones2014/nvim-ts-rainbow")
        use { "akinsho/toggleterm.nvim", tag = '*' }
        use('kyazdani42/nvim-web-devicons')
        use {
            'nvim-lualine/lualine.nvim',
            requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        }
        use("norcalli/nvim-colorizer.lua")

        -- color schemes
        use("folke/tokyonight.nvim")
        -- use("rebelot/kanagawa.nvim")

        -- lsp
        use {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig",
        }
        use("hrsh7th/nvim-cmp")
        use("hrsh7th/cmp-nvim-lsp")
        use("saadparwaiz1/cmp_luasnip")
        use("L3MON4D3/LuaSnip")
        use("onsails/lspkind.nvim")
        use("hrsh7th/cmp-buffer")
        use("hrsh7th/cmp-path")
        use("hrsh7th/cmp-cmdline")
        use("jose-elias-alvarez/null-ls.nvim")
        -- use("windwp/nvim-autopairs")



        use("jiangmiao/auto-pairs")
        use("lukas-reineke/indent-blankline.nvim")
        use("tpope/vim-commentary")
        use("andweeb/presence.nvim")
        use("lewis6991/gitsigns.nvim")
        use("simrat39/rust-tools.nvim")
    end)
