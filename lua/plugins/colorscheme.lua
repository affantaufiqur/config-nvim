return {
  {
    "miikanissi/modus-themes.nvim",
    lazy = false,
    priority = 1000,
    init = function()
      require("modus-themes").setup({
        transparent = true,
      })
      vim.cmd([[colorscheme modus]])
    end,
  },
  {
    "Lazyvim/LazyVim",
    opts = {
      colorscheme = "modus",
    },
  },
}
