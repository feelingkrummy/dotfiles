
-- Packer
return require('packer').startup( function(use)

	-- Packer
	use 'wbthomason/packer.nvim'

	-- Treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	
	-- Plugins
	-- use 'kien/ctrlp.vim'
	use 'preservim/nerdtree'

	use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		requires = { 
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		}
	}

	-- Vim Plugins
	use 'rbgrouleff/bclose.vim'

	-- Color Schemes
	use 'morhetz/gruvbox'

end)
