vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set nocompatible")
vim.cmd("filetype on")
vim.cmd("filetype plugin on")
vim.cmd("filetype indent on")
vim.cmd("syntax on")
vim.cmd("set nowrap")
vim.cmd("set cursorline")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("vnoremap < <gv")
vim.cmd("vnoremap > >gv")
vim.g.mapleader = ';'
vim.opt.termguicolors = true
vim.wo.relativenumber = true
vim.wo.number = true
vim.opt.conceallevel = 2
vim.o.laststatus = 3

require("config")
vim.notify = require("notify")
