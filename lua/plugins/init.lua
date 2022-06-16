return require'packer'.startup(function() 
        use 'kyazdani42/nvim-web-devicons'
        use 'wbthomason/packer.nvim'
        use 'rebelot/kanagawa.nvim'
        use 'kyazdani42/nvim-tree.lua'
        use 'jiangmiao/auto-pairs'
        use 'tpope/vim-commentary'
        use 'feline-nvim/feline.nvim'
        -- use 'airblade/vim-gitgutter'
        use {'nvim-telescope/telescope.nvim',
                requires = { {'nvim-lua/plenary.nvim'} }
        }


        use 'neovim/nvim-lspconfig'
        -- use 'nvim-lua/lsp_extensions.nvim'
        use 'hrsh7th/nvim-cmp'
        use 'hrsh7th/cmp-nvim-lsp'
        use 'saadparwaiz1/cmp_luasnip'
        use 'L3MON4D3/LuaSnip'
        use 'onsails/lspkind.nvim'


        use 'nvim-lualine/lualine.nvim'
        use 'romgrk/barbar.nvim' 
        use {'nvim-treesitter/nvim-treesitter',
                run = ':TSUpdate'
        }
        use 'andweeb/presence.nvim'
        use 'lewis6991/gitsigns.nvim'
        use 'p00f/nvim-ts-rainbow'
        use 'norcalli/nvim-colorizer.lua'
        use 'akinsho/toggleterm.nvim'
        use 'EdenEast/nightfox.nvim' 
        use 'folke/tokyonight.nvim'
        use 'marko-cerovac/material.nvim'
   -- rust 
        use 'rust-lang/rust.vim'
        -- use 'simrat39/rust-tools.nvim'
        -- use 'xiyaowong/nvim-transparent'
end)

