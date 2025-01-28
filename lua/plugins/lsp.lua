return{
  -- Lsp Config --
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "folke/neoconf.nvim",
      "folke/neodev.nvim",
      "j-hui/fidget.nvim",
    },
    config = function()
      require('neoconf').setup({})
      require('neodev').setup({})
      require('fidget').setup({})
      require('lspconfig').lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = {
              -- Get the language server to recognize the `vim` global
              globals = { 'vim' },
            },
          },
        },
      })
      --require('lspconfig').rust_analyzer.setup({})
      require('lspconfig').pylsp.setup({})
      require('lspconfig').pyright.setup({})
      require('lspconfig').clangd.setup({
        cmd = {"clangd", "--background-index", "--suggest-missing-includes"}
      })
      require('lspconfig').cmake.setup({})

    end
  },

  -- Mason Config --
  {
    "williamboman/mason.nvim",
    dependencies = {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    },
    event = 'VeryLazy',
    -- :MasonUpdate updates registry contents.
    build = ":MasonUpdate",
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        }
      })
      require('mason-lspconfig').setup()
      require('mason-tool-installer').setup({
        ensure_installed = {
          'eslint_d',
          'prettierd',
        --'rust-analyzer',
          'lua-language-server',
          'lua-language-server',
          'stylua',
          'graphql-language-service-cli',
          "pyright",
          "clangd",
          "cmake-language-server",
        },
        auto_update = true,
      })

    end
  },

  -- Lspsaga --
  {
    'nvimdev/lspsaga.nvim',
    config = function()
      require('lspsaga').setup({})
    end,

    keys = {
      { "<leader>k", mode = "n","<cmd>Lspsaga hover_doc<cr>", desc = "saga hover doc" },
      { "<leader>ca", mode = {"n", "v"},"<cmd>Lspsaga code_action<cr>", desc = "saga code action" },
      { "gd", mode = "n","<cmd>Lspsaga goto_definition<cr>" , desc = "saga definition" },
      { "gh", mode = "n","<cmd>Lspsaga finder<cr>" , desc = "saga finder" },
      { "[d", mode = "n","<cmd>Lspsaga diagnostic_jump_prev<cr>", desc = "diagnostic prev" },
      { "]d", mode = "n","<cmd>Lspsaga diagnostic_jump_next<cr>", desc = "diagnostic prev" },
      { "<leader>o", mode = "n","<cmd>Lspsaga outline<cr>", desc = "outline tree" },
      { "<leader>e", mode = "n","<cmd>Lspsaga rename ++project<cr>", desc = "rename" },

    },
    dependencies = {
      'nvim-treesitter/nvim-treesitter', -- optional
      'nvim-tree/nvim-web-devicons',     -- optional
    }
  },
  -- Lsp Kind
  {
    'onsails/lspkind-nvim',
    config = function()
      require('lspkind').init({
          -- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
          mode = 'symbol_text',

          -- default symbol map
          -- can be either 'default' (requires nerd-fonts font) or
          -- 'codicons' for codicon preset (requires vscode-codicons font)
          preset = 'codicons',
          -- override preset symbols
          --
          -- default: {}
          symbol_map = {
            Text = "",
            Method = "",
            Function = "",
            Constructor = "",
            Field = "ﰠ",
            Variable = "",
            Class = "ﴯ",
            Interface = "",
            Module = "",
            Property = "ﰠ",
            Unit = "塞",
            Value = "",
            Enum = "",
            Keyword = "",
            Snippet = "",
            Color = "",
            File = "",
            Reference = "",
            Folder = "",
            EnumMember = "",
            Constant = "",
            Struct = "פּ",
            Event = "",
            Operator = "",
            TypeParameter = ""
          },
      })

    end,


  }

}
