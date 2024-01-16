return {
  -- Telescope --
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-project.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make'
      }
    },
    cmd = "Telescope",
    event = "BufReadPre",
    keys = {
      { "<leader>f", ":Telescope find_files<CR>", desc = "find files" },
      { "<leader>g", ":Telescope live_grep<CR>", desc = "grep file" },
      { "<leader>R", ":Telescope resume<CR>", desc = "resume" },
      { "<leader>r", ":Telescope oldfiles<CR>", desc = "oldfiles" },
      { "<leader>t", ":TodoTelescope<CR>", desc = "todo search" },
    },
    config = function()
      require('telescope').setup {
        extensions = {
          fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = true,  -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
          },
          project = {
            base_dirs = {
              -- you can load workspace path here:
              --
            }
          }
        }
      }
      require('telescope').load_extension('fzf')
      require('telescope').load_extension('project')
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = '[f] find files' })
      vim.keymap.set('n', '<leader>g', builtin.live_grep, { desc = '[g] grep file' })
      vim.keymap.set('n', '<leader>r', builtin.oldfiles, { desc = '[r] Find recently opened files' })
      vim.keymap.set('n', '<leader>R', builtin.resume, { desc = '[R] Resume telescope' })
      vim.keymap.set('n', '<leader><space>', builtin.buffers, { desc = '[space] Find files in buffers' })
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[h] show help tag of telescope' })
      vim.keymap.set('n', '<leader>/', function()
        -- You can pass additional configuration to telescope to change theme, layout, etc.
        require('telescope.builtin').current_buffer_fuzzy_find( require('telescope.themes').get_cursor {
        previewer = false,
        })
      end, { desc = '[/] Fuzzily search in current buffer' })
    end
  }
}
