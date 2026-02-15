return {
  {
    "zenbones-theme/zenbones.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.zenbones_compat = 1
      vim.g.background = "light"
      vim.cmd([[colorscheme zenbones]])
    end,
  },
}
