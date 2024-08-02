require("lazy").setup(
    {
        -- Treesitter
        {
            'nvim-treesitter/nvim-treesitter',
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
        {
            "nvim-neo-tree/neo-tree.nvim",
            branch = "v3.x",
            dependencies = { 
                "nvim-lua/plenary.nvim",
                "nvim-tree/nvim-web-devicons",
                "MunifTanjim/nui.nvim",
            }
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
        'morhetz/gruvbox'
    }
)
