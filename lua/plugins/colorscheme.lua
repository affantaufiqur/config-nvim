return {
  {
    "mellow-theme/mellow.nvim",
    lazy = false,
    priority = 1000,
    init = function()
      vim.g.mellow_transparent = true
    end,
  },
  {
    "Lazyvim/LazyVim",
    opts = {
      colorscheme = "mellow",
    },
  },
}
