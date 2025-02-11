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

  {
   "folke/flash.nvim",
   event = "VeryLazy",
   opts = {},
   keys = {
     { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
     { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    },
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
    config = function()
      require("colorizer").setup() end
    -- config = true,
  },
  -- Comment & Todo --
  {
      'numToStr/Comment.nvim',
      lazy = false,
      opts={},
  },
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons'
    },
    keys = {
      {
       '<leader>md', mode = 'n',
       function()require('render-markdown').toggle() end,
       desc = "Toggle Markdown Render"},
    },
  },
}
