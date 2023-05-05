vim.keymap.set('n', '<leader>ta', '<Cmd>ToggleAlternate<CR>')

require('nvim-autopairs').setup {
  disable_filetype = { 'TelescopePrompt', 'vim' }
}

require('nvim-ts-autotag').setup {}
require('Comment').setup {}
