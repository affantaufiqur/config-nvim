return {
    'tpope/vim-sleuth',

    { 'numToStr/Comment.nvim',    opts = {} },

    {
        'lewis6991/gitsigns.nvim',
        opts = {
            signs = {
                add = { text = '+' },
                change = { text = '~' },
                delete = { text = '_' },
                topdelete = { text = '‾' },
                changedelete = { text = '~' },
            },
        },
        config = function(_, opts)
            require('gitsigns').setup(opts)
            -- Hunk reset keymap
            vim.keymap.set('n', '<leader>ghr', ':Gitsigns reset_hunk<CR>', { desc = '[G]it [H]unk [R]eset' })
        end,
    },

    {
        'folke/which-key.nvim',
        event = 'VimEnter',
        config = function()
            require('which-key').setup()

            -- Document existing key chains
            require('which-key').add {
                { '<leader>c', group = '[C]ode' },
                { '<leader>d', group = '[D]ocument' },
                { '<leader>r', group = '[R]ename' },
                { '<leader>s', group = '[S]earch' },
                { '<leader>w', group = '[W]orkspace' },
                { '<leader>t', group = '[T]oggle' },
                { '<leader>g', group = '[G]it' },
                { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
            }
        end,
    },

    -- Autoformat
    {
        'stevearc/conform.nvim',
        lazy = false,
        keys = {
            {
                '<leader>f',
                function()
                    require('conform').format { async = true, lsp_fallback = true }
                end,
                mode = '',
                desc = '[F]ormat buffer',
            },
        },
        opts = {
            notify_on_error = false,
            format_on_save = function(bufnr)
                -- Disable "format_on_save lsp_fallback" for languages that don't
                -- have a well standardized coding style. You can add additional
                -- languages here or re-enable it for the disabled ones.
                local disable_filetypes = { c = true, cpp = true }
                return {
                    timeout_ms = 500,
                    lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
                }
            end,
            formatters_by_ft = {
                lua = { 'stylua' },
                javascript = { "prettierd", "prettier", stop_after_first = true },
                javascriptreact = { "prettier" },
                typescriptreact = { "prettier" },
                typescript = { "prettier" },
                svelte = { "prettierd", "prettier", stop_after_first = true },
                astro = { "prettierd", "prettier", stop_after_first = true },
            },
        },
    },

    { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
    {
        'echasnovski/mini.nvim',
        config = function()
            require('mini.ai').setup { n_lines = 500 }
            require('mini.surround').setup()
            require('mini.bufremove').setup()
            require('mini.pairs').setup()
            require('mini.indentscope').setup()
        end,
    },

    -- treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        dependencies = {
            'nvim-treesitter/nvim-treesitter-context',
            'nvim-treesitter/nvim-treesitter-textobjects',
        },
        opts = {
            ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'vim', 'vimdoc', 'svelte', 'javascript', 'typescript', 'css' },
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = { 'ruby' },
            },
            indent = { enable = true, disable = { 'ruby' } },
            textobjects = {
                select = {
                    enable = true,
                    lookahead = true,
                    keymaps = {
                        ['af'] = '@function.outer',
                        ['if'] = '@function.inner',
                        ['ac'] = '@class.outer',
                        ['ic'] = '@class.inner',
                    },
                },
                move = {
                    enable = true,
                    set_jumps = true,
                    goto_next_start = {
                        [']m'] = '@function.outer',
                        [']]'] = '@class.outer',
                    },
                    goto_next_end = {
                        [']M'] = '@function.outer',
                        [']['] = '@class.outer',
                    },
                    goto_previous_start = {
                        ['[m'] = '@function.outer',
                        ['[['] = '@class.outer',
                    },
                    goto_previous_end = {
                        ['[M'] = '@function.outer',
                        ['[]'] = '@class.outer',
                    },
                },
            },
        },
        config = function(_, opts)
            require('nvim-treesitter.install').prefer_git = true
            require('nvim-treesitter.configs').setup(opts)

            -- Setup treesitter context
            require('treesitter-context').setup({
                enable = true,
                max_lines = 3,
                trim_scope = 'outer',
            })
        end,
    },

    -- persistance
    {
        "folke/persistence.nvim",
        event = "BufReadPre",
        opts = {
        }
    },

    -- autopairs
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },

    -- Auto-close HTML/XML tags with treesitter
    {
        'windwp/nvim-ts-autotag',
        event = "InsertEnter",
        config = function()
            require('nvim-ts-autotag').setup({
                opts = {
                    enable_close = true,
                    enable_rename = true,
                    enable_close_on_slash = false
                },
                per_filetype = {
                    ["html"] = {
                        enable_close = true
                    },
                    ["svelte"] = {
                        enable_close = true
                    }
                }
            })
        end
    },

    -- Git integration
    'tpope/vim-fugitive',

    -- Enhanced f/F/t/T motions
    {
        'jinh0/eyeliner.nvim',
        config = function()
            require('eyeliner').setup({
                highlight_on_key = true,
                dim = true,
            })
        end,
    },

    -- wakatime
    {
        "wakatime/vim-wakatime",
    },

    -- multiline
    {
        "mg979/vim-visual-multi",
        event = "VeryLazy",
        config = function()
            vim.g.VM_mouse_mappings = 0  -- Disable mouse mappings
            vim.g.VM_leader = '<leader>' -- Set leader key for visual multi
        end,
    },
}
