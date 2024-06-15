return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>ff",
      function()
        require("telescope.builtin").find_files({
          hidden = true,
          find_command = { "rg", "--files", "--hidden", "--glob", "!.git/**" },
        })
      end,
      desc = "Find files",
    },
    {
      "<leader>fg",
      function()
        require("telescope.builtin").live_grep({
          prompt_title = "Live Grep",
          cwd = vim.fn.getcwd(),
          additional_args = function(opts)
            return { "--hidden", "--glob", "!**/.git/**" }
          end,
        })
      end,
      desc = "Live grep",
    },
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
