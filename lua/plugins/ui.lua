return {
  -- Bufferline --
  {
    "akinsho/bufferline.nvim",
    event = "BufReadPre",
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
    local bufferline = require("bufferline")
      bufferline.setup {
        options = {

          mode = "buffers",
          hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
          },
          style_preset = bufferline.style_preset.minimal,

          numbers = "ordinal",
          indicator = {
            icon = '▎',
            style = 'icon',
          },
          separator_style = "thick",

          buffer_close_icon = '󰅖',
          modified_icon = '●',
          close_icon = '',
          left_trunc_marker = '',
          right_trunc_marker = '',

          max_name_length = 30,
          max_prefix_length = 30,
          tab_size = 21,
          diagnostics = "nvim_lsp",

          offsets = { { filetype = "neo-tree", text = "", padding = 1} },
          show_buffer_icons = true,
          show_buffer_close_icons = true,
          show_close_icon = true,
          show_tab_indicators = true,
          persist_buffer_sort = true,
          enforce_regular_tabs = true,
          always_show_bufferline = true,

        },
        highlights = {
           fill = {
              fg = { attribute = "fg", highlight = "Visual" },
              bg = { attribute = "bg", highlight = "TabLine" },
            },
            background = {
              fg = { attribute = "fg", highlight = "TabLine" },
              bg = { attribute = "bg", highlight = "TabLine" },
            },

            -- buffer_selected = {
            --   fg = {attribute='fg',highlight='#ff0000'},
            --   bg = {attribute='bg',highlight='#0000ff'},
            --   gui = 'none'
            --   },
            buffer_visible = {
              fg = { attribute = "fg", highlight = "TabLine" },
              bg = { attribute = "bg", highlight = "TabLine" },
            },

            close_button = {
              fg = { attribute = "fg", highlight = "TabLine" },
              bg = { attribute = "bg", highlight = "TabLine" },
            },
            close_button_visible = {
              fg = { attribute = "fg", highlight = "TabLine" },
              bg = { attribute = "bg", highlight = "TabLine" },
            },
            -- close_button_selected = {
            --   fg = {attribute='fg',highlight='TabLineSel'},
            --   bg ={attribute='bg',highlight='TabLineSel'}
            --   },

            tab_selected = {
              fg = { attribute = "fg", highlight = "Normal" },
              bg = { attribute = "bg", highlight = "Normal" },
            },
            tab = {
              fg = { attribute = "fg", highlight = "TabLine" },
              bg = { attribute = "bg", highlight = "TabLine" },
            },
            tab_close = {
              -- fg = {attribute='fg',highlight='LspDiagnosticsDefaultError'},
              fg = { attribute = "fg", highlight = "TabLineSel" },
              bg = { attribute = "bg", highlight = "Normal" },
            },

            duplicate_selected = {
              fg = { attribute = "fg", highlight = "TabLineSel" },
              bg = { attribute = "bg", highlight = "TabLineSel" },
              underline = true,
            },
            duplicate_visible = {
              fg = { attribute = "fg", highlight = "TabLine" },
              bg = { attribute = "bg", highlight = "TabLine" },
              underline = true,
            },
            duplicate = {
              fg = { attribute = "fg", highlight = "TabLine" },
              bg = { attribute = "bg", highlight = "TabLine" },
              underline = true,
            },

            modified = {
              fg = { attribute = "fg", highlight = "TabLine" },
              bg = { attribute = "bg", highlight = "TabLine" },
            },
            modified_selected = {
              fg = { attribute = "fg", highlight = "Normal" },
              bg = { attribute = "bg", highlight = "Normal" },
            },
            modified_visible = {
              fg = { attribute = "fg", highlight = "TabLine" },
              bg = { attribute = "bg", highlight = "TabLine" },
            },

            separator = {
              fg = { attribute = "bg", highlight = "TabLine" },
              bg = { attribute = "bg", highlight = "TabLine" },
            },
            separator_selected = {
              fg = { attribute = "bg", highlight = "Normal" },
              bg = { attribute = "bg", highlight = "Normal" },
            },
            -- separator_visible = {
            --   fg = {attribute='bg',highlight='TabLine'},
            --   bg = {attribute='bg',highlight='TabLine'}
            --   },
            indicator_selected = {
              fg = { attribute = "fg", highlight = "LspDiagnosticsDefaultHint" },
              bg = { attribute = "bg", highlight = "Normal" },
            },

        },


    }
      vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
      vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
    end
  },


  -- Noise --
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
        },
      },
      -- you can enable a present for easier configuration
      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = false
      },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },

  -- Notify --
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000000",
      render = "minimal", -- 'minimal', 'default', 'simple', 'compact'
    }
  },

  -- Git aux --
  {
    "lewis6991/gitsigns.nvim",
    config = true,
  },

}
