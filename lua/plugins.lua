local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local status, lazy = pcall(require, 'lazy')
if not status then return end


lazy.setup({

  -- color scheme
  {"folke/tokyonight.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight]])
    end
  },

  -- alpha
  -- {'goolord/alpha-nvim',},

  --lualine
  {'nvim-lualine/lualine.nvim'},

  -- bufferline
  {'akinsho/bufferline.nvim',tag = "v3.*", dependencies= 'nvim-tree/nvim-web-devicons'},


  -- nvim-tree
  {'nvim-tree/nvim-tree.lua', tag = 'nightly', dependencies='nvim-tree/nvim-web-devicons'},

  -- telescope
  {'nvim-lua/plenary.nvim'},
  {'nvim-telescope/telescope.nvim', dependencies='nvim-lua/plenary.nvim'},
  {'nvim-telescope/telescope-file-browser.nvim'},
  {'nvim-telescope/telescope-project.nvim'},
  
  -- bookmark
  {'MattesGroeger/vim-bookmarks'},
  {'tom-anders/telescope-vim-bookmarks.nvim'},

  -- mason
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},

  -- lsp
  {'neovim/nvim-lspconfig'},

  {'glepnir/lspsaga.nvim',
    event = 'BufRead',
    dependencies = 'nvim-tree/nvim-web-devicons'},

  -- completions plugins
  {'hrsh7th/nvim-cmp'},  -- core plugins
  {'hrsh7th/cmp-buffer'},-- buffer complication
  {'hrsh7th/cmp-cmdline'},
  {'hrsh7th/cmp-path'},

  {'hrsh7th/cmp-nvim-lsp'},

  {'hrsh7th/cmp-nvim-lua'},
  {'f3fora/cmp-spell'},
  {'saadparwaiz1/cmp_luasnip'},
  {'jose-elias-alvarez/typescript.nvim'},

  {'onsails/lspkind-nvim'},
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},

  --snip
  {'L3MON4D3/LuaSnip',
	version = '<CurrentMajor>.*',
	--build = 'make install_jsregexp'
  },
  
  -- todo comment
  {'folke/todo-comments.nvim'},
  
  -- markdown preview
  {'iamcco/markdown-preview.nvim', build = function() vim.fn["mkdp#util#install"]() end},
  
  -- other stuff
  {'p00f/nvim-ts-rainbow'},
  {'axelvc/template-string.nvim'},

  {'rmagatti/alternate-toggler'},
  {'windwp/nvim-autopairs'},
  {'windwp/nvim-ts-autotag'},
  {'numToStr/Comment.nvim'},
  {'wellle/targets.vim'},
  {'mg979/vim-visual-multi'},


  -- style
  {'folke/noice.nvim',
    dependencies = {
      'MunifTanjim/nui.nvim', 
      'rcarriga/nvim-notify',
    },
  },
  {'akinsho/toggleterm.nvim'},

})


--   -- debugger dap things
--   -- use('mfussenegger/nvim-dap')
--   -- use('jay-babu/mason-nvim-dap.nvim')
--   -- use('theHamsta/nvim-dap-virtual-text')
--   -- use('rcarriga/nvim-dap-ui')
--
--   -- sniprun
--   use { 'michaelb/sniprun', run = 'bash ./install.sh 1' }
--
