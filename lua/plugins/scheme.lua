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
        style = "storm", -- `storm`, `moon`, a darker variant `night` and `day`
        light_style = "day", -- The theme is used when the background is set to light
        transparent = true, -- Enable to disable setting the background color
        terminal_colors = true, -- Config the colors used when opening a `:terminal`

        styles = {
          -- Style to be applied to different syntax groups
          --
          -- Value is any valid attr-list value for `:help nvim_set_hl`
          comments = { italic = true },
          keywords = { italic = true },
          functions = {},
          variables = {},

          -- Background styles. Can be "dark", "transparent" or "normal"
          sidebars = "dark", -- style for sidebars, see below
          --floats = "dark", -- style for floating windows
          floats = "normal", -- style for floating windows
        },
        sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
        day_brightness = 0.3, -- Brightness of the colors of the **Day** style. "0-1"
        hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
        dim_inactive = false, -- dims inactive windows
        lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

      --on_colors = function(colors) end,
      --on_highlights = function(highlights, colors) end,
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
