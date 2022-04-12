return require('packer').startup(function(use)
    -- Plugin manager
    use 'wbthomason/packer.nvim'

    -- Appearance
    use {
        'andersevenrud/nordic.nvim',
        'kyazdani42/nvim-web-devicons',
    }

    -- Auto-completion
    use {
        -- snippet
        'hrsh7th/vim-vsnip',
        'hrsh7th/cmp-vsnip',

        --completion
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',

        'hrsh7th/cmp-path',
        'hrsh7th/cmp-buffer',
    }

    -- LSP
    use {
        'neovim/nvim-lspconfig',
    }

    -- Tools
    use {
        'lukas-reineke/indent-blankline.nvim',
        'norcalli/nvim-colorizer.lua',
        'lewis6991/gitsigns.nvim',

        'iamcco/markdown-preview.nvim',

        'nvim-telescope/telescope.nvim',
        'nvim-lua/plenary.nvim',

        'kyazdani42/nvim-tree.lua',

        'windwp/nvim-autopairs',
        'windwp/nvim-ts-autotag',
    }

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
    }
end)
