local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.scrolloff = 5
opt.sidescrolloff = 5

opt.hlsearch = true
opt.incsearch = true

opt.mouse = 'a'
opt.mousemoveevent = true
opt.clipboard:append('unnamedplus')

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

opt.ignorecase = true
opt.smartcase = true

opt.swapfile = false
opt.autoread = true
vim.bo.autoread = true

opt.signcolumn = 'yes'
opt.list = true

opt.cursorline = true
opt.termguicolors = true


-- highlight on yank
vim.api.nvim_create_autocmd(
  'TextYankPost',
  {
    pattern = {"*"},
    callback = function()
      vim.highlight.on_yank({
        higroup = 'IncSearch',
        timeout = 300
      })
    end,
  }
)
-- Ensure restoring cursor style
vim.api.nvim_create_autocmd('VimLeave', {
  callback = function()
    vim.opt.guicursor = "a:hor20" -- "a: {hor20|ver25|block}"
  end,
})
