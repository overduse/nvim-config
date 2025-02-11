return {
    {
      'saghen/blink.cmp',
      dependencies = 'rafamadriz/friendly-snippets',
      version = '*',
      ---@module 'blink.cmp'
      ---@type blink.cmp.Config
      opts = {
         -- |"default"|"super-tab"|"enter"|
        keymap = { preset = 'default' },
        appearance = {
          use_nvim_cmp_as_default = true,
          nerd_font_variant = 'normal'
        },

        -- Default list of enabled providers defined so that you can extend it
        -- elsewhere in your config, without redefining it, due to `opts_extend`
        sources = {
          default = { 'lsp', 'path', 'snippets', 'buffer' },
          providers = {
            markdown = {
              name = 'RenderMarkdown',
              module = 'render-markdown.integ.blink',
              fallbacks = { 'lsp' },
            },
          },
        },
      },
      opts_extend = { "sources.default" }
    }
}
