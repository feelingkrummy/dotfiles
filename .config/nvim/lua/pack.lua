
-- Packer
return require('packer').startup( function(use)

    -- Packer
    use 'wbthomason/packer.nvim'
    
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
