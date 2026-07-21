-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.showmode = true
vim.opt.conceallevel = 0
vim.opt.concealcursor = ""
vim.opt.foldenable = false
vim.opt.relativenumber = true
vim.opt.number = true

-- https://github.com/oven-sh/bun/issues/8520
vim.opt.backupcopy = "yes"

-- System clipboard integration
vim.opt.clipboard = "unnamedplus"
