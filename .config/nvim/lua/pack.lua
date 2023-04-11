
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
    use 'kien/ctrlp.vim'
    use 'preservim/nerdtree'
    use 'rbgrouleff/bclose.vim'

    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

    -- Color Schemes
    use 'morhetz/gruvbox'

end)
