vim.opt.termguicolors = true
require("bufferline").setup {
    options = {
        -- use vim build-in lsp
        diagnostics = "nvim_lsp",
        -- offset for nvim=tree
        offsets = {{
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
        }}
    }
}

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})

