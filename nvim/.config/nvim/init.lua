vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set nocompatible")
vim.cmd("filetype on")
vim.cmd("filetype plugin on")
vim.cmd("filetype indent on")
vim.cmd("syntax on")
vim.cmd("set cursorline")
vim.cmd("set clipboard=unnamedplus")
vim.g.mapleader = ';'
vim.opt.termguicolors = true
vim.wo.relativenumber = true
vim.wo.number = true

require("config.lazy")
require("config.treesitter")
require("config.cmp")

vim.notify = require("notify")
