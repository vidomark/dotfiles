return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    local wk = require("which-key")
    wk.register({
      r = { name = "refactor" },
      e = { name = "diagnostics" },
      v = { name = "views" },
    }, { prefix = "<leader>" })
  end,
}
