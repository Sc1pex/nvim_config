local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use "nvim-lua/plenary.nvim"

    use {
        "catppuccin/nvim",
        as = "catppuccin",
        config = function()
            vim.g.catppuccin_flavour = "frappe"
            require("catppuccin").setup()
            vim.api.nvim_command "colorscheme catppuccin"
        end
    }

    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "kyazdani42/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        }
    }

    use {
        "tenxsoydev/size-matters.nvim",
        config = function()
            require("size-matters").setup({})
        end
    }

    use "mrjones2014/smart-splits.nvim"

    use "Shatur/neovim-session-manager"

    use "lukas-reineke/indent-blankline.nvim"

    use "nvim-treesitter/nvim-treesitter"
    use {
        "p00f/nvim-ts-rainbow",
        after = {
            "nvim-treesitter"
        }
    }
    use {
        "windwp/nvim-ts-autotag",
        after = {
            "nvim-treesitter"
        }
    }
    use {
        "JoosepAlviste/nvim-ts-context-commentstring",
        after = {
            "nvim-treesitter"
        }
    }

    use {
        "NMAC427/guess-indent.nvim",
        config = function()
            require('guess-indent').setup({})
        end
    }

    use "rcarriga/nvim-notify"

    use "stevearc/dressing.nvim"

    use "nvim-telescope/telescope.nvim"

    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }


    use {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require('colorizer').setup()
        end
    }

    use "numToStr/Comment.nvim"

    use {
        "max397574/better-escape.nvim",
        config = function()
            require("better_escape").setup()
        end,
    }

    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require("bufferline").setup({})
        end
    }

    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }

    use 'famiu/bufdelete.nvim'

    use "rafamadriz/friendly-snippets"

    use {
        "L3MON4D3/LuaSnip",
        requires = "friendly-snippets",
    }

    use "hrsh7th/nvim-cmp"

    use "onsails/lspkind.nvim"

    use { "saadparwaiz1/cmp_luasnip",
        after = "nvim-cmp",
        config = function() end
    }

    use { "hrsh7th/cmp-buffer",
        after = "nvim-cmp",
        config = function() end
    }

    use { "hrsh7th/cmp-path",
        after = "nvim-cmp",
        config = function() end
    }

    use { "hrsh7th/cmp-nvim-lsp",
        after = "nvim-cmp",
        config = function() end
    }

    use "nvim-lualine/lualine.nvim"

    if packer_bootstrap then
        require('packer').sync()
    end
end)
