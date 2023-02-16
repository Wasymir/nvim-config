return require('packer').startup(function(use)
	    use 'wbthomason/packer.nvim'
	    use "williamboman/mason.nvim"
	    use "williamboman/mason-lspconfig.nvim"
	    use "neovim/nvim-lspconfig"
	    use {
	        'nvim-telescope/telescope.nvim', tag = '0.1.1',
	        requires = { { 'nvim-lua/plenary.nvim' } }
	    }
	    use({
	        'rose-pine/neovim',
	        as = 'rose-pine',
	        config = function()
		        require("rose-pine").setup()
		        vim.cmd('colorscheme rose-pine')
	        end
	    })
	    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
	    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
	    use 'hrsh7th/cmp-nvim-lsp' -- Autocompletion with LSPs
	    use 'L3MON4D3/LuaSnip'
	    use 'saadparwaiz1/cmp_luasnip'
	    use {
	        "windwp/nvim-autopairs",
	        config = function() require("nvim-autopairs").setup {} end
	    }
    end)
