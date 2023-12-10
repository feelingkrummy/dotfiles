-- CtrlP
vim.g.ctrlp_working_path_mode = "0"

-- Nerdtree
vim.g.NERDTreeWinSize = 45
vim.g.NERDTreeQuitOnOpen = 1

-- Lualine
require('lualine').setup()

-- Buffer Line
require('bufferline').setup{
    options = {
        right_mouse_command = '',
        buffer_close_icon = '',
        close_icon = ''
    }
}

-- Treesitter
require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = { 
        -- Programming Languages
         "cpp", "python",
        -- Required by Treesitter 
        "c", "lua", "vim", "vimdoc", "query"
    },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  -- ignore_install = { "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    -- disable = { "c", "rust" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = true,
  },
}

require('telescope').setup {
    extenstions = {
        fzf = {
            fuzzy = true,
            overrite_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
        }
    }
}

require('telescope').load_extension('fzf')
