require("lazy").setup(
	{
		-- Treesitter
		{
			'nvim-treesitter/nvim-treesitter',
			--branch = 'main',
			branch = 'master',
			lazy = false,
			build = ':TSUpdate'
		},
		-- Plugins
		{
			'nvim-lualine/lualine.nvim',
			dependencies = { 'nvim-tree/nvim-web-devicons' }
		},
		{
			'akinsho/bufferline.nvim',
			version = "*",
			dependencies = 'nvim-tree/nvim-web-devicons'
		},
		{
			'nvim-telescope/telescope.nvim',
			tag = '0.1.6',
			dependencies = { 'nvim-lua/plenary.nvim' }
		},
		{
			'nvim-telescope/telescope-fzf-native.nvim',
			build = 'make'
		},
		-- Vim Plugins
		'rbgrouleff/bclose.vim',
		{
			"christoomey/vim-tmux-navigator",
			lazy = false,
			cmd = {
				"TmuxNavigateLeft",
				"TmuxNavigateDown",
				"TmuxNavigateUp",
				"TmuxNavigateRight",
				"TmuxNavigatePrevious",
			},
			keys = {
				{ "<M-h>", "<cmd>TmuxNavigateLeft<CR>" },
				{ "<M-j>", "<cmd>TmuxNavigateDown<CR>" },
				{ "<M-k>", "<cmd>TmuxNavigateUp<CR>" },
				{ "<M-l>", "<cmd>TmuxNavigateRight<CR>" },
				{ "<M-\\>", "<cmd>TmuxNavigatePrevious<CR>" },
			}
		},
		-- Color Schemes
		{"ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
	}
)
