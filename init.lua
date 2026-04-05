-- vim.pack plugin manager setup (Neovim 0.12+)
-- All plugins and their configurations in a single file

-- ============================================
-- Plugin Installation
-- ============================================
vim.pack.add({
  -- Core utilities
  'https://github.com/folke/snacks.nvim',
  'https://github.com/nvim-treesitter/nvim-treesitter',
  'https://github.com/stevearc/conform.nvim',
  'https://github.com/mason-org/mason.nvim',
  'https://github.com/mason-org/mason-lspconfig.nvim',
  'https://github.com/neovim/nvim-lspconfig',
  'https://github.com/saghen/blink.cmp',
  'https://github.com/rafamadriz/friendly-snippets',
  
  -- Colorscheme
  'https://github.com/zenbones-theme/zenbones.nvim',
  
  -- Git
  'https://github.com/tpope/vim-fugitive',
  
  -- UI / Visual
  'https://github.com/MunifTanjim/nui.nvim',  -- neo-tree dependency
  'https://github.com/nvim-mini/mini.indentscope',
  'https://github.com/lukas-reineke/indent-blankline.nvim',
  'https://github.com/nvim-neo-tree/neo-tree.nvim',
  'https://github.com/b0o/incline.nvim',
  'https://github.com/nvim-tree/nvim-web-devicons',
  
  -- Editing
  'https://github.com/kylechui/nvim-surround',
  'https://github.com/chrisgrieser/nvim-spider',
  'https://github.com/jake-stewart/multicursor.nvim',
  'https://github.com/jinh0/eyeliner.nvim',
  'https://github.com/vuki656/package-info.nvim',
  
  -- Search & Navigation
  'https://github.com/mbbill/undotree',
  'https://github.com/dmtrKovalenko/fff.nvim',
  'https://github.com/Bekaboo/dropbar.nvim',
  
  -- LSP / Completion
  'https://github.com/zbirenbaum/copilot.lua',
  'https://github.com/olimorris/codecompanion.nvim',
  'https://github.com/j-hui/fidget.nvim',
  'https://github.com/nvim-lua/plenary.nvim',
  
  -- Statusline
  'https://github.com/nvim-lualine/lualine.nvim',
  
  -- Which-key (keymap helper)
  'https://github.com/folke/which-key.nvim',
  
  -- Time tracking
  'https://github.com/wakatime/vim-wakatime',
})

-- ============================================
-- Colorscheme
-- ============================================
vim.g.zenbones_compat = 1
vim.g.background = "light"
vim.cmd([[colorscheme zenbones]])
vim.cmd([[source ~/.config/nvim/custom.vim]])

-- ============================================
-- Plugin Configurations
-- ============================================

-- Snacks.nvim
require('snacks').setup({
  bigfile = { enabled = true },
  dashboard = { enabled = false },
  indent = { enabled = true },
  input = { enabled = true },
  notifier = { enabled = false },
  quickfile = { enabled = true },
  scroll = { enabled = false },
  statuscolumn = { enabled = true },
  words = { enabled = true },
  scope = { enabled = false },
})

-- Treesitter
require('nvim-treesitter').setup({
  ensure_installed = {
    "bash", "html", "javascript", "json", "lua", "markdown",
    "markdown_inline", "python", "query", "regex", "tsx",
    "typescript", "vim", "yaml",
  },
  highlight = { enable = true },
  illuminate = { enable = false },
  incremental_selection = { enable = false },
})

-- Conform (formatting)
require('conform').setup({
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "prettierd", "prettier", stop_after_first = true },
    javascriptreact = { "prettierd", "prettier", stop_after_first = true },
    typescript = { "prettierd", "prettier", stop_after_first = true },
    typescriptreact = { "prettierd", "prettier", stop_after_first = true },
    svelte = { "prettierd", "prettier", stop_after_first = true },
    astro = { "prettierd", "prettier", stop_after_first = true },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_format_fallback = true,
  },
})

-- Mason
require('mason').setup({
  ensure_installed = {
    "stylua", "shellcheck", "shfmt", "flake8", "ast-grep",
    "css-lsp", "html-lsp", "json-lsp", "lua-language-server",
    "markdown-toc", "prettierd", "prettier", "svelte-language-server",
    "tailwindcss-language-server",
  },
})

-- Mason-LSPConfig and LSP setup
require('mason-lspconfig').setup({
  ensure_installed = { 'ts_ls' },
  automatic_installation = false,
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
    -- Custom ts_ls configuration
    ['ts_ls'] = function()
      require('lspconfig').ts_ls.setup({
        init_options = {
          hostInfo = 'neovim',
          preferences = {
            importModuleSpecifierPreference = 'relative',
          },
        },
        settings = {
          typescript = {
            inlayHints = {
              includeInlayParameterNameHints = 'all',
              includeInlayFunctionParameterTypeHints = true,
              includeInlayVariableTypeHints = true,
            },
          },
        },
      })
    end,
  },
})

-- Blink.cmp (completion)
require('blink.cmp').setup({
  keymap = { preset = 'enter' },
  appearance = {
    nerd_font_variant = 'mono'
  },
  completion = { documentation = { auto_show = false } },
  sources = {
    default = { 'lsp', 'path', 'snippets', 'buffer' },
  },
  fuzzy = { implementation = "lua" }
})

-- Disable inlay hints
vim.lsp.inlay_hint.enable(false)

-- Mini.indentscope
require('mini.indentscope').setup({
  symbol = "╎",
  options = { try_as_border = true },
})

-- Disable indentscope for specific filetypes
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'help', 'alpha', 'dashboard', 'neo-tree', 'Trouble', 'trouble',
              'lazy', 'mason', 'notify', 'toggleterm', 'lazyterm' },
  callback = function()
    vim.b.miniindentscope_disable = true
  end,
})

-- Indent-blankline
require('ibl').setup({
  indent = {
    char = "┊",
    tab_char = " ",
  },
  scope = { enabled = true, show_exact_scope = true },
  exclude = {
    filetypes = {
      "help", "alpha", "dashboard", "neo-tree", "Trouble", "trouble",
      "lazy", "mason", "notify", "toggleterm", "lazyterm",
    },
  },
})

-- Neo-tree
require('neo-tree').setup({
  window = {
    position = "current",
  },
  filesystem = {
    use_libuv_file_watcher = false,
    follow_current_file = {
      enabled = true,
      leave_dirs_open = true,
    },
    filtered_items = {
      always_show = { ".env", ".prettierrc", ".github" },
      always_show_by_pattern = { ".env", ".prettier" },
    },
  },
  buffers = {
    follow_current_file = {
      enabled = true,
      leave_dirs_open = true,
    },
  },
})

-- nvim-surround
require('nvim-surround').setup({})

-- Spider (better word motions)
require('spider').setup({})

-- Multicursor
require('multicursor-nvim').setup({})

-- Eyeliner (f/F highlighting)
require('eyeliner').setup({
  highlight_on_key = true,
  dim = false,
})

-- Package-info (package.json helper)
require('package-info').setup({})

-- Undotree
vim.g.undotree_WindowLayout = 3
vim.g.undotree_SplitWidth = 40

-- FFF (fuzzy finder)
require('fff').setup({
  debug = {
    enabled = true,
    show_scores = true,
  },
})

-- NOTE: FFF keymaps are in lua/config/keymaps.lua

-- Dropbar
require('dropbar').setup({})

-- Which-key (keymap helper) - setup BEFORE other keymaps
require('which-key').setup({})
vim.keymap.set('n', '<leader>?', function()
  require('which-key').show({ global = false })
end, { desc = 'Buffer Local Keymaps (which-key)' })

-- Copilot
require('copilot').setup({
  suggestion = {
    enabled = true,
    auto_trigger = true,
    keymap = {
      accept = '<C-a>',
      next = '<C-j>',
    },
  },
})

-- CodeCompanion
require('codecompanion').setup({
  strategies = {
    chat = {
      adapter = "copilot",
      model = "claude-sonnet-4",
    },
  },
})

-- Fidget (LSP progress)
require('fidget').setup({
  progress = {
    display = {
      render_limit = 10,
    },
  },
})

-- Lualine
require('lualine').setup({
  options = {
    theme = 'zenbones',
  },
})

-- ============================================
-- General Settings
-- ============================================

-- Leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Load config files (keymaps, options, autocmds)
require('config.options')
require('config.keymaps')
require('config.autocmds')
