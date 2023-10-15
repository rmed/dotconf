local lsp_zero = require('lsp-zero')

-- Use mason to manage most LSP servers
--
-- Python linter has additional plugins:
-- 
--  - :PylspInstall pylsp-mypy python-lsp-black
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {},
    handlers = {
        lsp_zero.default_setup,
    },
})

-- External / System-wide LSP
require('lspconfig').clangd.setup({})
