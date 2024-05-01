local keymap = vim.keymap

vim.g.mapleader = " "

keymap.set("i", "jk", "<Esc>")
keymap.set("n", "<leader><F1>", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "H", "<nop>")
keymap.set("n", "x", '"_x')
keymap.set("v", "<leader>d", '"_d')
keymap.set("v", "<leader>c", '"_c')
keymap.set("v", "<leader>p", '"_dP')

keymap.set("n", "<leader><S-o>", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader><S-f>", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>e", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

keymap.set("n", "<C-o>", "<C-o>zz")
keymap.set("n", "<C-i>", "<C-i>zz")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "<F1>", "<cmd>ls<CR>:buffer ", { silent = true })
keymap.set("n", "<leader>bn", ":bn<CR>")
keymap.set("n", "<leader>bp", ":bp<CR>")

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>")
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>")
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>")
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>")
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>")
