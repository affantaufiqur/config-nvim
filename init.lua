-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.statusline")
require("config.showkey")
vim.lsp.inlay_hint.enable(false)
