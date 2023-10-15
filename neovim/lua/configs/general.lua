-- General editor configurations

-- Indentation guides
require('ibl').setup()

-- Commenting
require('Comment').setup({
    -- Handle key mapping differently
    mappings = false
})

-- Strip whitespace when saving
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = { "*" },
    command = [[%s/\s\+$//e]],
})
