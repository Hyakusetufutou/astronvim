return {
  "smoka7/hop.nvim",
  opts = {},
  dependencies = {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["gs"] = { function() require("hop").hint_char2() end, desc = "Hop hint" },
        },
        v = {
          ["gs"] = { function() require("hop").hint_char2 { extend_visual = true } end, desc = "Hop hint" },
        },
      },
    },
  },
}
