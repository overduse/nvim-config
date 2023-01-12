vim.keymap.set('n', '<leader>ta', '<Cmd>ToggleAlternate<CR>')

require('nvim-autopairs').setup {
  disable_filetype = { 'TelescopePrompt', 'vim' }
}

require('nvim-ts-autotag').setup {}
require('Comment').setup {}

-- style
require('fidget').setup()
require('noice').setup()
require('notify').setup({
  render = "minimal"
})
require('toggleterm').setup({
  direction = 'float',
  open_mapping = [[<c-\>]],
  shade_terminals = true
})
