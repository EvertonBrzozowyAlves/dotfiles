local opt = vim.opt

--> leader
vim.g.mapleader = " "

--> Tab / Indentation 
opt.expandtab = true
opt.tabstop = 3
opt.softtabstop = 3
opt.shiftwidth = 3
opt.smartindent = true
opt.wrap = false

--> Search
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

--> Appearance
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.cursorline = true
