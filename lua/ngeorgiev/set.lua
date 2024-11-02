local vopt = vim.opt

vopt.guicursor = ""

vopt.nu = true
vopt.relativenumber = true

vopt.tabstop = 2
vopt.softtabstop = 2
vopt.shiftwidth = 2
vopt.expandtab = true

vopt.smartindent = true

vopt.wrap = false

vopt.swapfile = false
vopt.backup = false
vopt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.undofile = true

vopt.hlsearch = false
vopt.incsearch = true

vopt.termguicolors = true

vopt.scrolloff = 8
vopt.signcolumn = "yes"
vopt.isfname:append("@-@")

vopt.updatetime = 50

vim.g.mapleader = " "

vopt.clipboard = "unnamedplus"

