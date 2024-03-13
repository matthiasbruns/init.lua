vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'tiagovla/tokyodark.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use 'Mofiqul/dracula.nvim'

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-lua/plenary.nvim')
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    -- LSP and completion with lsp-zero
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment the two plugins below if you want to manage the language servers from neovim
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            { "mfussenegger/nvim-dap" },
            { "jay-babu/mason-nvim-dap.nvim" },

            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'ray-x/go.nvim' },
            { 'ray-x/guihua.lua' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
            { 'hrsh7th/cmp-buffer' },

            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-nvim-lua' },
        }
    }

    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
    use { "leoluz/nvim-dap-go", requires = { "mfussenegger/nvim-dap" } }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use 'github/copilot.vim'

    use { 'smoka7/multicursors.nvim',
        requires = { 'smoka7/hydra.nvim' }
    }
    use 'tpope/vim-surround'
end)
