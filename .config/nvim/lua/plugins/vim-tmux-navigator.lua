return {
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
}
