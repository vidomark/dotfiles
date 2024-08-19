return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  config = function()
    local api_key = vim.fn.expand("OPENAI_API_KEY")
    vim.keymap.set("n", "<leader>cg", "<cmd>ChatGPT<CR>", { desc = "Open ChatGPT prompts" })
    require("chatgpt").setup({
      api_key = api_key,
      openai_params = {
        model = "gpt-4o",
        max_tokens = 4096,
      },
      openai_edit_params = {
        model = "gpt-4o",
      },
    })
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "folke/trouble.nvim",
    "nvim-telescope/telescope.nvim",
  },
}
