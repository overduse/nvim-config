vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- nvim-tree setting
require('nvim-tree').setup {
  sort_by = 'case_sensitive',
  error = 'E',
  git = {
    enable = false
  },
  -- auto_close = false
}

vim.keymap.set('n', '<c-s>', '<cmd>NvimTreeToggle<cr>')
