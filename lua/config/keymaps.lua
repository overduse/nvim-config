local keymap = vim.keymap

-- always set leader first
keymap.set('n', '<Space>', '<Nop>', { silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- x Dont yank
keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New table
keymap.set('n', 'te', ':tabedit')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

keymap.set('n', 'j', [[v:count?'j':'gj']], { noremap = true, expr = true})
keymap.set('n', 'k', [[v:count?'k':'gk']], { noremap = true, expr = true})

keymap.set({ 'n', 'x' }, '<leader>p', '"0p"')

-- If u need split function, uncomment the code below
-- I don't like the keymap.
-- Split window
--keymap.set('n', 'ss', ':split<Return><C-w>w')
--keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Move window
-- keymap.set('n', '<Space>', '<C-w>w')
-- keymap.set('n', 'sh', '<C-w>h')
-- keymap.set('n', 'sk', '<C-w>k')
-- keymap.set('n', 'sj', '<C-w>j')
-- keymap.set('n', 'sl', '<C-w>l')

