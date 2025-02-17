return {
  {
    'akinsho/toggleterm.nvim',
    cmd = "ToggleTerm",
    version = "*",
    keys = {
      {"<c-\\>", "<cmd>ToggleTerm<cr>", desc="toggle Float Term"},
    },
    opts = {
      direction = 'float',
      open_mapping = [[<c-\>]],
      shade_terminals = true,
      float_opts = {
        border = "curved" -- "single" | "double" | "shadow" | "curved"
      }
    }
  },
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitCurrentFile",
        "LazyGitFilter",
        "LazyGitFilterCurrentFile",
    },

    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    keys = {
        { "<leader>l", "<cmd>LazyGit<cr>", desc = "LazyGit" }
    }
  },
}
