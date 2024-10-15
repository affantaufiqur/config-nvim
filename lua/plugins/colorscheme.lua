return {
  {
    "bluz71/vim-moonfly-colors",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.moonflyTransparent = true
      vim.cmd([[colorscheme moonfly]])
    end,
  },
  {
    "Lazyvim/LazyVim",
    opts = {
      colorscheme = "moonfly",
    },
  },
}
