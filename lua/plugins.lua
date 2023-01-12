local status, packer = pcall(require, "packer")
if (not status) then
  print("packer is not install")
  return
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Package manager
  use('wbthomason/packer.nvim')

  -- GUI
  -- Theme
  use('sainnhe/everforest')
  use('folke/tokyonight.nvim')

  -- Lualine everforest
  use('nvim-lualine/lualine.nvim')

  -- bufferline
  use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }

  -- nvim-tree
  use {
    'nvim-tree/nvim-tree.lua',
    tag = 'nightly'
  }

  use('p00f/nvim-ts-rainbow')
  use('axelvc/template-string.nvim')

  -- configurations for nvim lsp
  use('neovim/nvim-lspconfig')

  -- completions plugins
  use('hrsh7th/nvim-cmp') -- core plugin
  use('hrsh7th/cmp-buffer') -- buffer completions
  use('hrsh7th/cmp-cmdline') -- command-line completions
  use('hrsh7th/cmp-path')
  use('hrsh7th/cmp-nvim-lsp')
  use('hrsh7th/cmp-nvim-lua')
  use('f3fora/cmp-spell') -- spell check

  -- luasnip
  use({
    "L3MON4D3/LuaSnip",
    tag = "v<CurrentMajor>.*"
  })

  use('saadparwaiz1/cmp_luasnip')
  use('rafamadriz/friendly-snippets') -- a bunch of snippets to use
  use('jose-elias-alvarez/typescript.nvim')

  -- lspkind
  use('onsails/lspkind-nvim')

  -- treesitter
  use({
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  })

  --telescope
  use('nvim-lua/plenary.nvim')
  use('nvim-telescope/telescope.nvim')
  use('nvim-telescope/telescope-file-browser.nvim')
  use('nvim-telescope/telescope-project.nvim')
  use('kyazdani42/nvim-web-devicons')

  -- tudo-comments
  use({
    'folke/todo-comments.nvim',
    requires = 'nvim-lua/plenary.nvim'
  })

  --alpha.nvim
  use('goolord/alpha-nvim')

  -- mason.nvim is a powerful plugins-manager
  use('williamboman/mason.nvim')
  use('williamboman/mason-lspconfig.nvim')

  -- sniprun
  use { 'michaelb/sniprun', run = 'bash ./install.sh 1' }

  -- markdown-preview
  use('iamcco/markdown-preview.nvim')

  -- other
  use('rmagatti/alternate-toggler')
  use('windwp/nvim-autopairs')
  use('windwp/nvim-ts-autotag')
  use('numToStr/Comment.nvim')
  use('wellle/targets.vim')
  use('mg979/vim-visual-multi')
  -- style
  use('j-hui/fidget.nvim')
  use({
    'folke/noice.nvim',
    requires = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    }
  })
  use({
    'akinsho/toggleterm.nvim',
    tag = '*'
  })

end)
