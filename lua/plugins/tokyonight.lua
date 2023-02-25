require("tokyonight").setup({
    style = "storm",
    light_style = "day",
    transparent = true,
    terminal_colors = true,
    styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},

        sidebars = "transparent",
        floats = "normal",
    },
    sidebars = { "qf", "help", }, --"vista_kind", "terminal", "packer"
    day_brightness = 0.3,
    hide_inactive_statusline = true,
    dim_inactive = true,
    lualine_bold = false,
})
vim.cmd([[colorscheme tokyonight]])
