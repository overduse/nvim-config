return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "BufEnter",
    opts = {
      winopts = {
        height     = 0.85,
        width      = 0.80,
        row        = 0.35,
        col        = 0.50,
        border     = "rounded",
        backdrop   = 60,
        fullscreen = false,
      },
      files = {
        fd_opts = "--type f --color=never",
        prompt = "files> ",
        cmd = "fd",
        git_icons = true,
        search_dirs = { vim.fn.getcwd() },
      },
      live_grep = {
        grep_opts = "--color=never",
        search_dirs = {  vim.fn.getcwd() },
      },
    },
    keys = {
      {"<leader>f", "<cmd>FzfLua files<cr>", desc = "Find Files"},
      {"<leader>g", "<cmd>FzfLua live_grep<cr>", desc = "Grep"},
      {"<leader>,", "<cmd>FzfLua buffers sort_mru=true sort_lastused=true<cr>", desc = "Switch Buffer"},
      {"<leader>r", "<cmd>FzfLua oldfiles<cr>", desc = "Recent"},
      {"<leader>R", "<cmd>FzfLua resume<cr>", desc = "resume"},
    }
  },
  -- Todo-comments
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = "TodoTelescope",
    event = "BufEnter",
    keys =  {
      {"<leader>t", "<cmd>TodoFzfLua<cr>", desc = "TodoFzfLua" }
    },
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
}
