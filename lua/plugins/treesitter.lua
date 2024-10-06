-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  enabled = false,
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
