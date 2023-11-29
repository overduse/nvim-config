return {
  -- Bufferline --
  {
    "akinsho/bufferline.nvim",
    event = "BufReadPre",
    config = function()
    local bufferline = require("bufferline")
      bufferline.setup {
        options = {
          mode = "buffers",
        --highlight = {},
          hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
          },
          style_preset = bufferline.style_preset.no_italic,
          separator_style = "slope",
          diagnostics = "nvim_lsp",
          highlights = {
            fill = {
              bg = {
                attribute = "fg",
                highlight = "Pmenu"
              }
            }
          },

        }
    }
      vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
      vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
    end
  },
  -- Noise --
  --
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      presets = {
        bottom_search = false,
        command_palette = false,
        long_message_to_split = true,
      },
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
      }
    },
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000000",
      -- 'minimal', 'default', 'simple', 'compact'
      render = "minimal",
    }
  },

  -- Git aux --
  {
    "lewis6991/gitsigns.nvim",
    config = true,
  },

}
