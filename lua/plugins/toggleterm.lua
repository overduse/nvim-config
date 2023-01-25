require('toggleterm').setup({
  direction = 'float',
  open_mapping = [[<c-\>]],
  shade_terminals = true
})

vim.keymap.set('n', '<leader>l', ':LazyGit<cr>')
