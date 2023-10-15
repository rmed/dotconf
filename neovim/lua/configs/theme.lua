-- This file configures the theme of the editor
-- require("tokyonight").setup({
--     style = "night",
--     transparent = true
-- })

vim.g.sonokai_style = 'atlantis'
vim.g.sonokai_disable_italic_comment = 1
vim.g.sonokai_better_performance = 1
vim.g.sonokai_transparent_background = 1

vim.cmd.colorscheme('sonokai')

-- Status line theme
require('lualine').setup({
    theme = 'sonokai'
})
