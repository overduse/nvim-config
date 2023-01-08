require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    'sumneko_lua',
    'clangd',
    'pyright',
    --'cmake-language-server',
    --'python-lsp-server',
    'tsserver',
    'graphql',
    'rust_analyzer'
  },
  automatic_installation = true,
})
