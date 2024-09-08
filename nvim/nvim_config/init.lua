vim.opt.termguicolors = true
vim.o.compatible = false

vim.g.mapleader = " "
vim.g.maplocalleader = ' '
vim.o.number = true
vim.o.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.showmode = true
vim.opt.breakindent = true
vim.opt.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.opt.signcolumn = 'yes'
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.cursorline = true
vim.o.scrolloff = 5

vim.o.shiftwidth = 4
vim.o.smarttab = true
vim.o.tabstop = 4
vim.o.expandtab = true

vim.o.wrap = false
vim.o.incsearch = true
vim.o.showcmd = true
vim.o.showmode = true
vim.o.showmatch = true
vim.o.hlsearch = true
vim.o.history = 1000

-- Open prievously opened file
vim.keymap.set("n", "<leader>op", ":e #<cr>")

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps, see :help diagnostic.txt
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

require("config/plugins")
vim.cmd.colorscheme("edge")
require("config/lsp")
