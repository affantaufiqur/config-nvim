-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- LSP Keymaps (attached when LSP server starts)
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    local opts = { buffer = ev.buf }
    
    -- Navigation
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = ev.buf, desc = 'Go to Definition' })
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, { buffer = ev.buf, desc = 'Go to References' })
    vim.keymap.set('n', 'gI', vim.lsp.buf.implementation, { buffer = ev.buf, desc = 'Go to Implementation' })
    vim.keymap.set('n', 'gy', vim.lsp.buf.type_definition, { buffer = ev.buf, desc = 'Go to Type Definition' })
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { buffer = ev.buf, desc = 'Go to Declaration' })
    
    -- Hover and help
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = ev.buf, desc = 'Hover Documentation' })
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, { buffer = ev.buf, desc = 'Signature Help' })
    
    -- Code actions
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { buffer = ev.buf, desc = 'Code Action' })
    vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename, { buffer = ev.buf, desc = 'Rename' })
    
    -- Diagnostics
    vim.keymap.set('n', '<leader>cd', vim.diagnostic.open_float, { buffer = ev.buf, desc = 'Line Diagnostics' })
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { buffer = ev.buf, desc = 'Next Diagnostic' })
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { buffer = ev.buf, desc = 'Prev Diagnostic' })
  end,
})
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


