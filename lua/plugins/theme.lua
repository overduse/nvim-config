return {
  -- Tokyonight Scheme --
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    dependencies = {
      "nvim-lualine/lualine.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      -- tokyonight scheme
      require("tokyonight").setup({
        -- scheme config
        style = "night",
        light_style = "day",
        transparent = false,
        terminal_colors = true,

        styles = {
          comments  = { italic = true },
          keywords  = { italic = true },
          functions = {},
          variables = {},

          sidebars = "normal",
          floats = "normal",
        },
        sidebars = { "qf", "help" },
        day_brightness = 0.3,
        hide_inactive_statusline = false,
        dim_inactive = true,
        lualine_bold = false,
      })

      vim.cmd[[colorscheme tokyonight]]
      require('lualine').setup {
        options = {
          theme = 'auto',
        },
      }
    end
    },
}
