return {
  {
    "rhysd/accelerated-jk",
    event = "BufReadPre",
    config = function()
      vim.keymap.set("n", "j", "<Plug>(accelerated_jk_gj)")
      vim.keymap.set("n", "k", "<Plug>(accelerated_jk_gk)")
    end,
  },
  {
    "folke/persistence.nvim",
    config = function()
      require("persistence").setup()
      vim.keymap.set("n","<leader>qs",[[<cmd>lua require("persistence").load()<cr>]])
      vim.keymap.set("n","<leader>ql",[[<cmd>lua require("persistence").load({last=true})<cr>]])
      vim.keymap.set("n","<leader>qd",[[<cmd>lua require("persistence").stop()<cr>]])
    end
  },
  {
    "windwp/nvim-autopairs",
    event = "BufReadPre",
    opts = {
      enable_check_bracket_line = false,
    }
  },
  {
    "ethanholz/nvim-lastplace",
    event = "BufReadPre",
    config = true,
  },

--{
--  "folke/flash.nvim",
--  event = "VeryLazy",
--  opts = {},
--  keys = {
--    { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
--    { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
--    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
--    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
--    --{ "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
--  },
--},
  {
    "kamykn/spelunker.vim",
    event = "BufReadPre",
    config = function()
        vim.g.spelunker_check_type = 2
    end
  },

  {
    "ellisonleao/glow.nvim",
    cmd = "Glow",
    config = true,
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      { "<leader>s", "<cmd>Neotree toggle<cr>", desc = "toggle neotree" },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup()
      vim.keymap.set({"n", "v"},"<leader>s",[[<cmd>Neotree toggle<CR>]])
    end
  },

  {
    "folke/which-key.nvim",
    event = "BufReadPre",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    config=true
  },

  {
    "norcalli/nvim-colorizer.lua",
    config = true,
  },


  -- Toggleterm --
  {
    "akinsho/toggleterm.nvim",
    cmd = "ToggleTerm",
    version = "*",
    keys = {
      {"<c-\\>", "<cmd>ToggleTerm", desc = "Toggle Float Term" }
    },
    opts = {
      direction = 'float',
      open_mapping = [[<c-\>]],
      shade_terminals = true
    },
  },

  -- Comment & Todo --
  {
      'numToStr/Comment.nvim',
      lazy = false,
      opts={},
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = "TodoTelescope",
    event = "BufReadPre",
    config = function ()
      require("todo-comments").setup{}
      -- jump keymap setting
      vim.keymap.set("n", "]t", function()
        require("todo-comments").jump_next()
      end, { desc = "Next todo comment" })

      vim.keymap.set("n", "[t", function()
        require("todo-comments").jump_prev()
      end, { desc = "Previous todo comment" })
    end
  },
  -- Lazygit --
  {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
}

