return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require "cmp"
    local lspkind = require "lspkind"

    opts.formatting = {
      format = lspkind.cmp_format({
        mode = "symbol_text",
        maxwidth = 50,
        ellipsis_char = "...",
        show_labelDetails = true,
        -- before = function(entry, vim_item)
        --   vim_item.menu = ({
        --     nvim_lsp = "[LSP]",
        --     luasnip = "[Snippet]",
        --     buffer = "[Buffer]",
        --     path = "[Path]",
        --   })[entry.source.name]
        --   return vim_item
        -- end
      })
    }

    opts.window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    }

    return opts
  end,
}
