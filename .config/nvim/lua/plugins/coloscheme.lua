return {
  --   {
  --     "morhetz/gruvbox",
  --     config = function()
  --       vim.g.gruvbox_transparent_bg = 1
  --       vim.opt.termguicolors = true
  --       vim.cmd.colorscheme("gruvbox")
  --       vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  --       vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  --     end,
  --   },
  -- }

  --   {
  --     "ellisonleao/gruvbox.nvim",
  --     opts = function(_, opts)
  --       opts.transparent_mode = true
  --     end,
  --   },
  --   {
  --     "LazyVim/LazyVim",
  --     opts = {
  --       colorscheme = "gruvbox",
  --     },
  --   },
  -- }

  {
    "sainnhe/gruvbox-material",
    config = function()
      if vim.fn.has("termguicolors") == 1 then
        vim.opt.termguicolors = true
      end

      vim.opt.background = "dark"
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_transparent_background = 2
      vim.cmd("colorscheme gruvbox-material")
    end,
  },
}
