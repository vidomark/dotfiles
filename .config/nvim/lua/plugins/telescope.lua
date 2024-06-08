return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
    { "<leader>fh", "<cmd>Telescope buffers<cr>", desc = "Recent files" },
    { "<leader>fa", "<cmd>Telescope help_tags", desc = "Find tags" },
    {
      "<leader>f:",
      function()
        require("telescope.builtin").builtin.command_history()
      end,
      desc = "Command history",
    },
    {
      "<leader>fp",
      function()
        require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
      end,
      desc = "Find Plugin File",
    },
    { "<leader>/", false },
    { "<leader>,", false },
  },
}
