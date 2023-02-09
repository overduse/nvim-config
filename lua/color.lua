vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
      vim.highlight.on_yank {
          higroup = 'IncSearch',
          timeout = 300
      }
    end
})

-- set color scheme
-- vim.cmd('colorscheme everforest')
--
-- vim.cmd('colorscheme tokyonight-moon')
-- vim.cmd('colorscheme tokyonight-night')
-- vim.cmd('colorscheme tokyonight-storm')
