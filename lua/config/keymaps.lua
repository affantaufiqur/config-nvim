-- Clear highlight on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', '<leader>cd', vim.diagnostic.open_float, { desc = '[C]ode [D]iagnostics' })

-- Exit terminal mode easier
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<C-h>', ':bprev<CR>', { desc = 'Go to previous buffer' })
vim.keymap.set('n', '<C-l>', ':bnext<CR>', { desc = 'Go to next buffer' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Window management keymaps
vim.keymap.set('n', '<leader>wv', ':vsplit<CR>', { desc = 'Split window vertically' })
vim.keymap.set('n', '<leader>wd', ':close<CR>', { desc = 'Close current window' })

-- Additional window navigation with Shift+H/L
vim.keymap.set('n', '<S-h>', '<C-w>h', { desc = 'Move to left window' })
vim.keymap.set('n', '<S-l>', '<C-w>l', { desc = 'Move to right window' })

-- Buffer delete with mini.bufremove (preserves window layout)
vim.keymap.set('n', '<leader>bd', function() require('mini.bufremove').delete() end, { desc = 'Delete buffer (keep window)' })

-- folke/persistence
vim.keymap.set("n", "<leader>qs", function() require("persistence").load() end, { desc = "Load last session" })
