-- Normal
vim.keymap.set({ "n", "o" }, "H", "^", { desc = "Move to the first non-blank character of the line" })
vim.keymap.set({ "n", "o" }, "L", "$", { desc = "Move to the end of the line" })
vim.keymap.set({ "n" }, "<leader>n", "<cmd>noh<cr><esc>", { desc = "Escape and Clear hlsearch" })
vim.keymap.set("n", "<C-o>", "<C-o>zz", { desc = "Back and center" })
vim.keymap.set("n", "<C-i>", "<C-i>zz", { desc = "Forward and center" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Page down and center" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Page up and center" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result and center" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result and center" })
vim.keymap.set("n", "<C-c>", "ggVG", { desc = "Select all" })
vim.keymap.set("n", "<CR>", "m`o<Esc>``", { desc = "Enter new line and retain position" })

-- Insert
vim.keymap.set("i", "jk", "<Esc>")

-- Visual
vim.keymap.set("v", "ő", "<gv")
vim.keymap.set("v", "ú", ">gv")

vim.keymap.set({ "n", "v" }, "x", '"_x')
vim.keymap.set("v", "<leadek>d", '"_d')
vim.keymap.set("v", "<leader>c", '"_c')
vim.keymap.set("v", "<leader>p", '"_dP')

-- Window
vim.keymap.set("n", "<leader>ww", "<C-W>p", { desc = "Other Window" })
vim.keymap.set("n", "<leader>wd", "<C-W>c", { desc = "Delete Window" })
vim.keymap.set("n", "<leader>ws", "<C-W>s", { desc = "Split Window Below" })
vim.keymap.set("n", "<leader>wv", "<C-W>v", { desc = "Split Window Right" })
vim.keymap.set("n", "<C-A-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<C-A-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<C-A-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<C-A-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Buffer
vim.keymap.set("n", "<C-n>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<C-p>", "<cmd>bnext<cr>", { desc = "Next Buffer" })

-- Tab
vim.keymap.set("n", "<leader><tab>k", "<cmd>tabnext<cr>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader><tab>j", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- Diagnostic
local diagnostic_goto = function(next, severity)
  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function()
    go({ severity = severity })
  end
end
vim.keymap.set("n", "<leader>ej", diagnostic_goto(false), { desc = "Prev Diagnostic" })
vim.keymap.set("n", "<leader>ek", diagnostic_goto(true), { desc = "Next Diagnostic" })
vim.keymap.set("n", "<leader>ed", vim.diagnostic.open_float, { desc = "Line Diagnostics" })

-- View
local lazyterm = function()
  LazyVim.terminal(nil, { cwd = LazyVim.root() })
end
vim.keymap.set("n", "<leader>vt", lazyterm, { desc = "Terminal (Root)" })
vim.keymap.set("n", "<leader>vT", function()
  LazyVim.terminal()
end, { desc = "Terminal" })
