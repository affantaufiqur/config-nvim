return {
  {
    "zenbones-theme/zenbones.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.zenbones_transparent_background = true
      vim.g.zenbones_compat = 1
      vim.cmd([[colorscheme zenbones]])
    end,
  },
  {
    "Lazyvim/LazyVim",
    opts = {
      colorscheme = "zenbones",
    },
  },
}
