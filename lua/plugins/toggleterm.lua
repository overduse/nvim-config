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
  }
}
