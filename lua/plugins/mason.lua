require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    'lua_ls',
    'clangd',
    'pyright',
    'tsserver',
    'graphql',
    'rust_analyzer',
  },
  automatic_installation = true,
})
