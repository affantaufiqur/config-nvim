return {
  {
    "slugbyte/lackluster.nvim",
    lazy = false,
    priority = 1000,
    init = function()
      vim.cmd([[colorscheme lackluster-dark]])
    end,
  },
  {
    "Lazyvim/LazyVim",
    opts = {
      colorscheme = "lackluster",
    },
  },
}
