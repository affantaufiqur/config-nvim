-- Make line numbers default
vim.opt.number = true
-- Add relative line numbers for easier navigation
vim.opt.relativenumber = true

-- Enable mouse mode (useful for resizing splits)
vim.opt.mouse = 'a'

-- Show the mode (your preference)
vim.opt.showmode = true

-- Sync clipboard between OS and Neovim
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or capital letters
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters
vim.opt.list = true
vim.opt.listchars = { tab = '  ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below cursor
vim.opt.scrolloff = 10

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true

-- Your royal preferences
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.conceallevel = 0
vim.opt.concealcursor = ""
