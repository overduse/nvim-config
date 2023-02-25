require("noice").setup({
    lsp = {
        override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true,
        },
    },
    presets = {
        bottom_search = false,
        command_palette = false,
        long_message_to_split = true,
    },
})

require('notify').setup({
    background_colour = "#000000",
    -- 'minimal', 'default', 'simple', 'compact'
    render = "compact",
})
