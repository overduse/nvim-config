local on_attach = function(_, bufnr)

  -- format on save
  vim.api.nvim_create_autocmd('BufWritePre', {
    group = vim.api.nvim_create_augroup('LspFormatting', { clear = true }),
    buffer = bufnr,
    callback = function()
      vim.lsp.buf.format()
    end
  })
end


local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lsp_config = {
  capabilities = capabilities,
  on_attach = function(_, bufnr)
    on_attach(_, bufnr)
  end
}

require('mason-lspconfig').setup_handlers({
  function(server_name)
    require('lspconfig')[server_name].setup(lsp_config)
  end,

  -- set clangd lsp
  clangd = function()
    require('lspconfig').clangd.setup(lsp_config)
  end,

  -- pyright
  pyright = function()
    require('lspconfig').pyright.setup(vim.tbl_extend('force', lsp_config, {
      settings = {
        python = {
          analysis = {
            autoSearchPaths = true,
            diagnostics = 'workspace',
            useLibraryCodeForTypes = true,
            typeCheckingMode = 'off',
          }
        }
      }
    }))
  end,

  -- lua
  sumneko_lua = function()
    require('lspconfig').sumneko_lua.setup(vim.tbl_extend('force', lsp_config, {
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' }
          }
        }
      }
    }))
  end,

  -- typescript
  tsserver = function()
    require('typescript').setup({
      server = vim.tbl_extend('force', lsp_config, {
        on_attach = function(_, bufnr)
          on_attach(_, bufnr)
        end,
        init_options = {
          preferences = {
            importMOduleSpecifierPreference = 'projectrelative',
            jsxAttributeCompletionStylr = 'none',
          }
        }
      })
    })
  end,
})
