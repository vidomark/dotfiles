-- return {
--   "sainnhe/gruvbox-material",
--   config = function()
--     if vim.fn.has("termguicolors") == 1 then
--       vim.opt.termguicolors = true
--     end
--
--     vim.opt.background = "dark"
--     vim.g.gruvbox_material_background = "hard"
--     vim.g.gruvbox_material_transparent_background = 2
--     vim.cmd("colorscheme gruvbox-material")
--   end,
-- }

return {
  {
    "catppuccin/nvim",
    opts = {
      flavour = "mocha",
      transparent_background = true,
    },
    specs = {
      {
        "akinsho/bufferline.nvim",
        optional = true,
        opts = function(_, opts)
          if (vim.g.colors_name or ""):find("catppuccin") then
            opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
          end
        end,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}

-- return {
--   "catppuccin/nvim",
--   opts = {
--     transparent_background = true,
--     background = {
--       light = "latte",
--       dark = "mocha",
--     },
--   },
--   specs = {
--     {
--       "akinsho/bufferline.nvim",
--       optional = true,
--       opts = function(_, opts)
--         if (vim.g.colors_name or ""):find("catppuccin") then
--           opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
--         end
--       end,
--     },
--   },
--   priority = 1000,
-- }
