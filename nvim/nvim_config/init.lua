require("config/plugins")

vim.g.mapleader = " "

vim.o.compatible = false
vim.o.number = true
vim.o.relativenumber = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.scrolloff = 10
vim.o.wrap = false
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.showcmd = true
vim.o.showmode = true
vim.o.showmatch = true
vim.o.hlsearch = true
vim.o.history = 1000
vim.cmd.colorscheme("shado")

require("config/lsp")
