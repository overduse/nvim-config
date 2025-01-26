return {
  -- Tokyonight Scheme --
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    dependencies = {
      "nvim-lualine/lualine.nvim",
      "nvim-tree/nvim-web-devicons",
      "utilyre/barbecue.nvim",
      "SmiteshP/nvim-navic",
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
          comments = { italic = true },
          keywords = { italic = true },
          functions = {},
          variables = {},

          sidebars = "dark",
          floats = "dark",
        },
        sidebars = { "qf", "help" },
        day_brightness = 0.3,
        hide_inactive_statusline = false,
        dim_inactive = false,
        lualine_bold = false,
      })


      vim.cmd[[colorscheme tokyonight]]

      require('barbecue').setup {
        theme = 'tokyonight',
      }
      require('lualine').setup {
        options = {
          theme = 'tokyonight'
        }
      }
    end
  },
}
