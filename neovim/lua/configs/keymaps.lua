local telescope_builtin = require('telescope.builtin')

require('legendary').setup({
    keymaps = {
        -- Tmux
        { '<C-h>', { n = '<CMD>NvimTmuxNavigateLeft<CR>' }, description = 'Left pane', opts = { silent = true } },
        { '<C-j>', { n = '<CMD>NvimTmuxNavigateDown<CR>' }, description = 'Bottom pane', opts = { silent = true } },
        { '<C-k>', { n = '<CMD>NvimTmuxNavigateUp<CR>' }, description = 'Upper pane', opts = { silent = true } },
        { '<C-l>', { n = '<CMD>NvimTmuxNavigateRight<CR>' }, description = 'Right pane', opts = { silent = true } },

        -- Splits
        { '<leader>-', { n = '<CMD>split<CR>' }, description = 'Horizontal split', opts = { silent = true } },
        { '<leader>_', { n = '<CMD>vsplit<CR>' }, description = 'Vertical split', opts = { silent = true } },

        -- Tabs
        { '<C-t>', '<CMD>tabnew<CR>', description = 'Open a new tab', opts = { silent = true } },
        { '<C-w>', '<CMD>tabclose<CR>', description = 'Close current tab', opts = { silent = true } },
        { '<C-p>', '<CMD>tabprevious<CR>', description = 'Go to previous tab', opts = { silent = true } },
        { '<C-n>', '<CMD>tabnext<CR>', description = 'Go to next tab', opts = { silent = true } },

        -- Code / LSP
       { '<leader>i', { n = '<CMD>lua vim.lsp.buf.format()<CR>' }, description = 'Format buffer' },

        -- File tree
        { '<C-b>', { n = '<CMD>NvimTreeToggle<CR>' }, description = 'Toggle file tree', opts = { silent = true } },

        -- Fuzzy finder
        { '<leader>ff', { n = telescope_builtin.find_files }, description = 'Fuzzy find files', opts = { silent = true } },
        { '<leader>fg', { n = telescope_builtin.live_grep }, description = 'Fuzzy live grep', opts = { silent = true } },
        { '<leader>fb', { n = telescope_builtin.buffers }, description = 'Fuzzy find buffers', opts = { silent = true } },
        { '<leader>fs', { n = telescope_builtin.lsp_document_symbols }, description = 'Fuzzy find symbols', opts = { silent = true } },
        { '<leader>fh', { n = telescope_builtin.help_tags }, description = 'Fuzzy help tags', opts = { silent = true } },

        -- Comments
        { '<leader>cl',
            {
                n = '<Plug>(comment_toggle_linewise)',
                v = '<Plug>(comment_toggle_linewise_visual)'
            },
            description = 'Comment toggle linewise'
        },
        { '<leader>cb',
            {
                n = '<Plug>(comment_toggle_blockwise)',
                v = '<Plug>(comment_toggle_blockwise_visual)'
            },
            description = 'Comment toggle blockwise'
        },
    },
    commands = {},
    funcs = {},
    autocmds = {},
    extensions = {}
})
