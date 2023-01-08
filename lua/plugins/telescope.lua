local actions = require('telescope.actions')

require('nvim-web-devicons').setup({
  override = {},
  default = true,
})

require('telescope').setup({
  defaults = {
    prompt_prefix = ' ',
    selection_caret = ' ',
    path_display = { 'smart' },

    mappings = {
      i = {
        ['<esc>'] = actions.close,
        ['<c-u>'] = actions.preview_scrolling_up,
        ['<c-d>'] = actions.preview_scrolling_down,
      },
    },
    layout_config = {
      horizontal = {
        preview_cutoff = 100,
        preview_width = 0.6,
      },
    },
  },

  extensions = {
    project = {
      base_dirs = {
        '~/workshop'
      },
      hidden_files = true,
      theme = "dropdown",
      order_by = 'asc',
      search_by = 'title',
      sync_with_nvim_tree = true,
    }
  }
})

require('telescope').load_extension('project')

-- set telescope keymap

vim.keymap.set('n', '<leader>f', '<cmd>lua require("telescope.builtin").find_files({no_ignore=false,hidden=true})<cr>')
vim.keymap.set('n', '<leader>g', '<cmd>lua require("telescope.builtin").live_grep({no_ignore=false,hidden=true})<cr>')
vim.keymap.set('n', '<leader>r', '<cmd>lua require("telescope.builtin").oldfiles({no_ignore=false,hidden=true})<cr>')
vim.keymap.set('n', '<leader>p', ':Telescope project <CR>')
