-- Base config
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

vim.opt.number = true
vim.opt.mouse = 'a'

-- 4 spaces for indenting
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Make space the leader key
vim.g.mapleader = ' '


-- Plugin manager
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    -- Theme
    -- {
    --     'folke/tokyonight.nvim',
    --     lazy = false,
    --     priority = 1000,
    --     opts = {}
    -- },
    {
        'sainnhe/sonokai',
        lazy = false,
        priority = 1000,
        opts = {}
    },
    -- Tmux integration
    {
        'alexghergh/nvim-tmux-navigation',
        lazy = false,
        config = function()
            require('nvim-tmux-navigation').setup {}
        end
    },
    -- File tree
    {
        'nvim-tree/nvim-tree.lua',
        lazy = false,
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('nvim-tree').setup {}
        end,
    },
    -- Keymap legend
    {
        'mrjones2014/legendary.nvim',
        priority = 10000,
        lazy = false
    },
    -- LSP
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
    },
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    -- Tree sitter syntax highlighting
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
    },
    -- UI selector
    {
        'stevearc/dressing.nvim',
        opts = {},
        lazy = true
    },
    -- Fuzzy finder
    {
        'nvim-telescope/telescope.nvim',
        lazy = true,
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    -- Status line
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    -- Indentation guides
    {
        'lukas-reineke/indent-blankline.nvim',
        main = 'ibl',
        opts = {}
    },
    -- Auto pairing
    {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',
        opts = {}
    },
    -- Comments
    {
        'numToStr/Comment.nvim',
        opts = {},
        lazy = false,
    }
})

-- Theme
require('configs.theme')

-- File tree
require('configs.file-tree')

-- LSP
require('configs.lsp')

-- General editor configs
require('configs.general')

-- Key bindings
-- vim.keymap.set('<mode>', '<lhs>', '<rhs>', {<opts>})
--
-- <mode>: Mode where the keybinding should execute, can be a list:
--
-- - n: normal
-- - i: insert
-- - x: visual
-- - s: selection
-- - v: visual + selection
-- - t: terminal
-- - o: operator-pending
-- - '': n + v + o
--
-- <lhs>: key to bind
-- <rhs>: action to execute
-- {<opts>}: table of options
require('configs.keymaps')
