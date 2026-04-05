-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- FFF (fuzzy finder) - leader f prefix
vim.keymap.set('n', '<leader>ff', function() require('fff').find_files() end, { desc = 'Find [F]iles' })
vim.keymap.set('n', '<leader>fs', function() require('fff').scan_files() end, { desc = '[F]ile [S]can' })
vim.keymap.set('n', '<leader>fr', function() require('fff').refresh_git_status() end, { desc = '[F]iles [R]efresh git status' })
vim.keymap.set('n', '<leader><space>', function() require('fff').find_files() end, { desc = 'Find files' })

-- FFF Grep
vim.keymap.set('n', '<leader>fz', function() require('fff').live_grep({ grep = { modes = { 'fuzzy', 'plain' } } }) end, { desc = 'Live Fu[Z]zy grep' })
vim.keymap.set('n', '<leader>fc', function() require('fff').live_grep({ query = vim.fn.expand("<cword>") }) end, { desc = 'Search [C]urrent word' })

-- Copilot Chat
vim.api.nvim_set_keymap(
  "n",
  "<leader>cpo",
  ":CopilotChatOpen<CR>",
  { noremap = true, silent = true, desc = "Open copilot chat window" }
)

-- Neo-tree file explorer
vim.api.nvim_set_keymap(
  "n",
  "<leader>e",
  ":Neotree toggle<CR>",
  { noremap = true, silent = true, desc = "Toggle file explorer" }
)

-- Neo-tree current file reveal
vim.api.nvim_set_keymap(
  "n",
  "<leader>E",
  ":Neotree reveal<CR>",
  { noremap = true, silent = true, desc = "Reveal current file in explorer" }
)


