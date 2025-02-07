local keymap = vim.keymap

-- always set leader first
keymap.set('n', '<Space>', '<Nop>', { silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- x Dont yank
keymap.set('n', 'x', '"_x')

-- Increment/decrement
-- keymap.set('n', '+', '<C-a>')
-- keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
-- keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New table
keymap.set('n', 'te', ':tabedit')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')
-- Swap windows
keymap.set('n', '<Leader>wh', ':wincmd H<CR>', { noremap = true, silent = true })
keymap.set('n', '<Leader>wl', ':wincmd L<CR>', { noremap = true, silent = true })
keymap.set('n', '<Leader>wj', ':wincmd J<CR>', { noremap = true, silent = true })
keymap.set('n', '<Leader>wk', ':wincmd K<CR>', { noremap = true, silent = true })

keymap.set('n', 'j', [[v:count?'j':'gj']], { noremap = true, expr = true })
keymap.set('n', 'k', [[v:count?'k':'gk']], { noremap = true, expr = true })

keymap.set({ 'n', 'x' }, '<leader>p', '"0p"')

