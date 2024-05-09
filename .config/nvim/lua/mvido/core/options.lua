local opt = vim.opt

opt.relativenumber = true
opt.number = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.wrap = false
opt.ignorecase = true
opt.history = 1000
opt.showcmd = true
opt.showmode = true
opt.visualbell = true
opt.smartcase = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.backspace = "indent,eol,start"
opt.splitright = true
opt.splitbelow = true
opt.incsearch = true
opt.scrolloff = 1000
opt.foldmethod = "indent"
opt.foldenable = false
opt.iskeyword:append("-")
opt.clipboard:append({ "unnamedplus", "unnamed" })
