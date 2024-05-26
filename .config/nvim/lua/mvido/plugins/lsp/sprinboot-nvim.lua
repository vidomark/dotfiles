return {
  "elmcgill/springboot-nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "mfussenegger/nvim-jdtls",
  },
  config = function()
    local springboot_nvim = require("springboot-nvim")

    vim.keymap.set("n", "nr", springboot_nvim.boot_run, { desc = "[J]ava [R]un Spring Boot" })
    vim.keymap.set("n", "nc", springboot_nvim.generate_class, { desc = "[J]ava Create [C]lass" })
    vim.keymap.set("n", "ni", springboot_nvim.generate_interface, { desc = "[J]ava Create [I]nterface" })
    vim.keymap.set("n", "ne", springboot_nvim.generate_enum, { desc = "[J]ava Create [E]num" })

    springboot_nvim.setup({})
  end,
}
