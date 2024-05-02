return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    })

    telescope.load_extension("fzf")

    local keymap = vim.keymap

    keymap.set("n", "<leader><S-o>", "<cmd>Telescope find_files<cr>")
    keymap.set("n", "<leader><S-f>", "<cmd>Telescope live_grep<cr>")
    keymap.set("n", "<leader>e", "<cmd>Telescope buffers<cr>")
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
    keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
    keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>")
  end,
}
